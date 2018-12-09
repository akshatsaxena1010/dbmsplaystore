using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;

namespace playstore.developer_login
{
    public partial class developer_login : System.Web.UI.Page
    {

    
         SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Source\Repos\playstore\playstore\App_Data\database.mdf;Integrated Security=True");
    
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("plgn", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@User_name", TextBox1.Text);
            SqlParameter p2 = new SqlParameter("@Password", TextBox2.Text);
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            con.Open();
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();


                string st = TextBox1.Text;
                Session["plogin"] = st;
                Response.Redirect("~/developer/devdashboard.aspx");
 

            }
            else
            {

            }
        }
    }
}