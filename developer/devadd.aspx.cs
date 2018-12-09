using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace playstore.developer
{
   

    public partial class devadd : System.Web.UI.Page

    {
        SqlConnection co = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Source\Repos\playstore\playstore\App_Data\database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd1 = new SqlCommand("SELECT Dev_ID from Developer Where Dev_Name = @a", co);
            cmd1.Parameters.AddWithValue("@a", Session["add"].ToString());
            co.Open();
            string s = cmd1.ExecuteScalar().ToString();


            SqlCommand cmd = new SqlCommand("insert into [dbo].[Application] values (@name,@price,@size,@genre,@st )", co);

            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@size", TextBox4.Text);
            cmd.Parameters.AddWithValue("@price", TextBox3.Text);
            cmd.Parameters.AddWithValue("@genre", TextBox2.Text);
            cmd.Parameters.AddWithValue("@st", s);



            cmd.ExecuteNonQuery();
            co.Close();

            Label1.Visible = true;
            Label1.Text = "Application Registered Successfully";



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/developer/devdashboard.aspx");
        }

    }
}