using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace C2_2103040133
{
    public partial class Add_Master : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NumberGenerate();
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=Tama\SQLEXPRESS;Initial Catalog=db_toko_buku;Integrated Security=True");
        protected void Insert_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("Insert into tb_buku values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + int.Parse(DropDownList1.Text) + "','" + int.Parse(DropDownList2.Text) + "','" + TextBox4.Text + "')", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            clear();
            LoadRecord();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("update tb_buku set nomor_buku='" + TextBox1.Text + "',Judul='" + TextBox2.Text + "',genre_buku='" + DropDownList1.Text + "',jumlah_buku='" + int.Parse(TextBox4.Text) + "' where nomor_buku= '" + TextBox1.Text + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            clear();
            LoadRecord();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("Delete tb_buku where nomor_buku='" + TextBox5.Text + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();

            LoadRecord();
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("SELECT tb_buku.nomor_buku, tb_buku.Judul, tb_jenis_buku.jenis_buku, tb_kategori.Kategori, tb_buku.ISBN FROM     tb_jenis_buku INNER JOIN tb_buku ON tb_jenis_buku.id_jenis = tb_buku.id_jenis INNER JOIN tb_kategori ON tb_buku.id_kategori = tb_kategori.id_Kategori", conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        void NumberGenerate()
        {
            string num = "1234567890";
            int len = num.Length;
            string otp = string.Empty;
            int otpdigit = 5;
            string finaldigit;

            int getindex;

            for (int i = 0; i < otpdigit; i++)
            {
                do
                {
                    getindex = new Random().Next(0, len);
                    finaldigit = num.ToCharArray()[getindex].ToString();
                }
                while (otp.IndexOf(finaldigit) != -1);
                otp += finaldigit;
            }

            TextBox1.Text = "BK" + (otp);
        }

        void clear()
        {
            TextBox2.Text = string.Empty;
            TextBox4.Text = string.Empty;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[0].Text;
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

            TextBox5.Text = GridView1.Rows[rowind].Cells[1].Text;
            TextBox2.Text = GridView1.Rows[rowind].Cells[2].Text;
            TextBox4.Text = GridView1.Rows[rowind].Cells[5].Text; 
        }
    }
}