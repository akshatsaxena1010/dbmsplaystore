using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
namespace playstore.developer
{
   

    public partial class devdelete : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Source\Repos\playstore\playstore\App_Data\database.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand tr = new SqlCommand("select Dev_ID from Developer where Dev_Name=@k", con);
            tr.Parameters.AddWithValue("@k", Session["add"].ToString());
            con.Open();
            string t = tr.ExecuteScalar().ToString();
            string st = TextBox1.Text;
            SqlCommand cmd = new SqlCommand("select count(*) from Application where App_Name=@u and Dev_ID=@p;", con);
            cmd.Parameters.AddWithValue("@u", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p", t);
            
            string i = cmd.ExecuteScalar().ToString();
            int rd = int.Parse(i);
            if (rd != 0)
            {
                if (MessageBox.Show("Are you sure that you want to delete the Application?", "message", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    SqlCommand cmd2 = new SqlCommand("delete from Application where App_Name=@u ;", con);
                    cmd2.Parameters.AddWithValue("@u", TextBox1.Text);
                    

                    cmd2.ExecuteNonQuery();
                    Label1.Text = "Application Deleted";

                }
            }
            else
            {
                Label1.Text = "Application Not Found";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/developer/devdashboard.aspx");
        }

    }
}