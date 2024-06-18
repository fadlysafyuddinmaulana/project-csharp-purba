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
    public partial class Add_Kategori : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    LoadRecord();
            //}
        }
        //SqlConnection conn = new SqlConnection(@"Data Source=Tama\SQLEXPRESS;Initial Catalog=db_toko_buku;Integrated Security=True");
        //protected void Insert_Click(object sender, EventArgs e)
        //{
        //    conn.Open();
        //    SqlCommand comm = new SqlCommand("Insert into tb_kategori values('" + TextBox2.Text + "')", conn);
        //    comm.ExecuteNonQuery();
        //    conn.Close();

        //    clear();
        //    LoadRecord();
        //}

        //void LoadRecord()
        //{
        //    SqlCommand comm = new SqlCommand("select * from tb_kategori", conn);
        //    SqlDataAdapter d = new SqlDataAdapter(comm);
        //    DataTable dt = new DataTable();
        //    d.Fill(dt);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //}

        //void clear()
        //{
        //    TextBox1.Text = string.Empty;
        //    TextBox2.Text = string.Empty;
        //}

        //protected void Update_Click(object sender, EventArgs e)
        //{
        //    conn.Open();
        //    SqlCommand comm = new SqlCommand("update tb_kategori set kategori='" + TextBox2.Text + "'where id_Kategori= '" + int.Parse(TextBox1.Text) + "'", conn);
        //    comm.ExecuteNonQuery();
        //    conn.Close();
        //    clear();
        //    LoadRecord();
        //}

        //protected void Delete_Click(object sender, EventArgs e)
        //{
        //    conn.Open();
        //    SqlCommand comm = new SqlCommand("Delete tb_kategori where id_kategori='" + TextBox1.Text + "'", conn);
        //    comm.ExecuteNonQuery();
        //    conn.Close();
        //    LoadRecord();
        //}

        //protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        //{
        //    int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

        //    TextBox1.Text = GridView1.Rows[rowind].Cells[1].Text;
        //    TextBox2.Text = GridView1.Rows[rowind].Cells[2].Text;
        //}
    }
}