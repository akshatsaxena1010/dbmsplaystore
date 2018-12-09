using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace playstore.user_register
{
    public partial class user_register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Source\Repos\playstore\playstore\App_Data\database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
            protected void Button1_Click(object sender,EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into [dbo].[User] values (@User_Name,@DoB,@Card_Details,@Mob_No,@Password)", con);

            cmd.Parameters.AddWithValue("@User_Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@DoB", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Card_Details", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Mob_No", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox5.Text);
            con.Open();

            cmd.ExecuteNonQuery();
            con.Close();


            Label1.Text = "User registered successfully";

            Response.Redirect("~/user_login/user_login.aspx");
        }
    }
}