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
    public partial class Customer_Page : System.Web.UI.Page
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
            SqlCommand comm = new SqlCommand("Insert into tb_customer values('" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            clear();
            LoadRecord();
        }


        protected void Update_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("update tb_customer set nama_customer ='" + TextBox4.Text + "',no_hp='" + TextBox2.Text + "',alamat='" + TextBox3.Text + "' where id_customer='" + TextBox5.Text + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            clear();
            LoadRecord();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("Delete tb_customer where id_customer='" + TextBox5.Text + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            clear();
            LoadRecord();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

            TextBox5.Text = GridView1.Rows[rowind].Cells[1].Text;
            TextBox4.Text = GridView1.Rows[rowind].Cells[2].Text;
            TextBox3.Text = GridView1.Rows[rowind].Cells[4].Text;
            TextBox2.Text = GridView1.Rows[rowind].Cells[3].Text;
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("SELECT * from tb_customer", conn);
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

            TextBox1.Text = "CST" + (otp);
        }

        void clear()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
        }
    }
}