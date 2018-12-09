using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace playstore.developer
{
    public partial class devdashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Source\Repos\playstore\playstore\App_Data\database.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["plogin"].ToString();

            SqlCommand cmd = con.CreateCommand();
            
            cmd.CommandText = "SELECT App_Name FROM Application WHERE  Dev_id in (SELECT Dev_id from Developer where Dev_Name=@uid )";
            cmd.Parameters.AddWithValue("@uid", Label1.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();

            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string st = Label1.Text;
            Session["add"] = st;

            Response.Redirect("~/developer/devadd.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string st = Label1.Text;
            Session["add"] = st;

            Response.Redirect("~/developer/devdelete.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Welcome/welcome.aspx");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}