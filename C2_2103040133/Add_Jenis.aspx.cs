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
    public partial class Add_Jenis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=Tama\SQLEXPRESS;Initial Catalog=db_toko_buku;Integrated Security=True");
        protected void Insert_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("Insert into tb_jenis_buku values('" + TextBox2.Text + "')", conn);
            comm.ExecuteNonQuery();
            conn.Close();

            clear();
            LoadRecord();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("update tb_jenis_buku set jenis_buku='" + TextBox2.Text + "'where id_jenis= '" + int.Parse(TextBox1.Text) + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            clear();
            LoadRecord();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("Delete tb_jenis_buku where id_jenis='" + TextBox1.Text + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            LoadRecord();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

            TextBox1.Text = GridView1.Rows[rowind].Cells[1].Text;
            TextBox2.Text = GridView1.Rows[rowind].Cells[2].Text;
        }

        void clear()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from tb_jenis_buku", conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}