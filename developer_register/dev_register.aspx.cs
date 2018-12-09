using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace playstore.developer_register
{
    public partial class dev_register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Source\Repos\playstore\playstore\App_Data\database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into [dbo].[Developer] values (@Dev_ID,@Dev_Name,@Location)", con);

            cmd.Parameters.AddWithValue("@Dev_ID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Dev_Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Location", TextBox3.Text);
            

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Label1.Text = "User registered successfully";

            Response.Redirect("~/developer_login/developer_login.aspx");

        }
    }
}