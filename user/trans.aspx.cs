using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace playstore.user
{
    public partial class trans : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Source\Repos\playstore\playstore\App_Data\database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string st = Session["game"].ToString();
            Label2.Text = st;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("mnum", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@user", Session["result"].ToString());
            SqlParameter p2 = new SqlParameter("@password", TextBox2.Text);
           
          

            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            con.Open();
            string rd = com.ExecuteScalar().ToString();
            int myInt = 1;
            string check = myInt.ToString();
            con.Close();

            if (String.Equals(rd, check))
            {
                Label3.Text = "Purchase Successful";
                Label3.Visible = true;

                string result = "SELECT User_ID FROM   [User] WHERE  [User_Name] = '" + Session["result"].ToString() + "'";
                SqlCommand showresult = new SqlCommand(result, con);
                con.Open();
                string u =  showresult.ExecuteScalar().ToString();

                string result1 = "SELECT App_ID FROM [Application] WHERE [App_name] = '" + Session["game"].ToString() + "'";
                SqlCommand showresult1 = new SqlCommand(result1, con);

                string g =  showresult1.ExecuteScalar().ToString();

                string a = Session["price"].ToString();
                

               

                string s = Session["size"].ToString();
               

                string result4 = "SELECT Genre FROM [Application] WHERE [App_name] = '" + Session["game"].ToString() + "'";
                SqlCommand showresult4 = new SqlCommand(result4, con);

                string d =  DateTime.Now.ToString("yyyy-MM-dd");

                //string c =  TextBox3.Text;

                SqlCommand cmd = new SqlCommand("insert into [dbo].[Transaction] values (@u,@g,@a,@d,@s )", con);
                cmd.Parameters.AddWithValue("@d", DateTime.Now);
                cmd.Parameters.AddWithValue("@u", u);
                cmd.Parameters.AddWithValue("@g", g);
                cmd.Parameters.AddWithValue("@a", a);
                cmd.Parameters.AddWithValue("@s", s);
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("insert into [dbo].[Apps_Downloaded] values (@u,@g,@a,@d)", con);
                cmd2.Parameters.AddWithValue("@u", u);
                cmd2.Parameters.AddWithValue("@g", g);
                cmd2.Parameters.AddWithValue("@a", a);
                cmd2.Parameters.AddWithValue("@d", DateTime.Now);
                cmd2.ExecuteNonQuery();

                con.Close();


            }
            else
            {
                Label2.Text = "Invalid username or password.";
                Label2.Visible = true;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/user/user_apps.aspx");
        }
    }
    }