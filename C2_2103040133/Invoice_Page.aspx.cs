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
    public partial class Invoice_Page : System.Web.UI.Page
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

        protected void Get_Click1(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("SELECT tb_buku.nomor_buku, tb_buku.Judul, tb_stok.id_stok, tb_stok.nomor_buku AS Expr1, tb_stok.harga_buku FROM tb_buku INNER JOIN tb_stok ON tb_buku.nomor_buku = tb_stok.nomor_buku where id_stok= '" + DropDownList2.Text + "'", conn);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                TextBox2.Text = r.GetValue(1).ToString();
                TextBox7.Text = r.GetValue(3).ToString();
                TextBox4.Text = r.GetValue(4).ToString();
            }
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("Insert into tb_invoice values('" + TextBox1.Text + "','" + DropDownList1.Text + "','" + TextBox7.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "')", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            clear();
            LoadRecord();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("update tb_invoice set id_customer = '" + TextBox8.Text + "',id_stok='" + TextBox7.Text + "',Stok = '" + TextBox3.Text + "',Total_Biaya = '" + int.Parse(TextBox6.Text) + "'  where id_invoice= '" + TextBox5.Text + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            clear();
            LoadRecord();
        }

        void NumberGenerate()
        {
            string num = "1234567890";
            int len = num.Length;
            string otp = string.Empty;
            int otpdigit = 4;
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

            TextBox1.Text = "INV" + (otp);
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("SELECT tb_invoice.id_invoice, tb_invoice.id_customer, tb_customer.nama_customer, tb_invoice.id_stok, tb_stok.nomor_buku, tb_buku.Judul, tb_stok.harga_buku, tb_invoice.Stok, tb_invoice.Total_Biaya FROM     tb_buku INNER JOIN tb_stok ON tb_buku.nomor_buku = tb_stok.nomor_buku CROSS JOIN tb_customer INNER JOIN tb_invoice ON tb_customer.id_customer = tb_invoice.id_customer", conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        void clear()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
        }

        protected void Solver_Click(object sender, EventArgs e)
        {
            TextBox6.Text = (float.Parse(TextBox4.Text) * float.Parse(TextBox3.Text)).ToString();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

            TextBox5.Text = GridView1.Rows[rowind].Cells[1].Text;

            TextBox8.Text = GridView1.Rows[rowind].Cells[2].Text;

            TextBox2.Text = GridView1.Rows[rowind].Cells[6].Text;
            TextBox7.Text = GridView1.Rows[rowind].Cells[5].Text;

            TextBox3.Text = GridView1.Rows[rowind].Cells[8].Text;
            TextBox4.Text = GridView1.Rows[rowind].Cells[7].Text;
            TextBox6.Text = GridView1.Rows[rowind].Cells[9].Text;

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("Delete tb_invoice where id_invoice='" + TextBox5.Text + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            clear();
            LoadRecord();
        }


    }
}