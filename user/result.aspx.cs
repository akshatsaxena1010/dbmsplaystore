using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace playstore.user_login
{
    public partial class result : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Source\Repos\playstore\playstore\App_Data\database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["value"].ToString();
            string q = Session["value"].ToString();
            string result = "SELECT dev_name FROM [dbo].[Application] a,[dbo].[Developer] d WHERE App_Name = '" + q + "' AND a.Dev_id = d.Dev_ID";
            SqlCommand showresult = new SqlCommand(result, con);
            con.Open();
            Label4.Text = showresult.ExecuteScalar().ToString();

            string result1 = "SELECT size FROM [dbo].[application] WHERE app_name = '" + q + "'";
            SqlCommand showresult1 = new SqlCommand(result1, con);

            Label3.Text = showresult1.ExecuteScalar().ToString();

            string result2 = "SELECT price FROM [dbo].[application] WHERE app_name = '" + q + "'";
            SqlCommand showresult2 = new SqlCommand(result2, con);

            Label6.Text = showresult2.ExecuteScalar().ToString();

            con.Close();

            Label5.Text = Session["user_login"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["result"] = Label5.Text;
            Session["game"] = Label1.Text;
            Session["price"] = Label6.Text;
            Session["size"] = Label3.Text;

            Response.Redirect("~/user/trans.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/user/user_apps.aspx");
        }
    }
}