using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;

using System.Web.UI.WebControls;
using System.Data;

namespace playstore.user
{
    public partial class user_apps : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Source\Repos\playstore\playstore\App_Data\database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string q = Label1.Text = Session["user_login"].ToString();
            string result = "SELECT User_ID FROM[User] WHERE[User_Name] = '" + Session["user_login"].ToString() + "'";
            SqlCommand showresult1 = new SqlCommand(result, con);
            con.Open();
            string str = showresult1.ExecuteScalar().ToString();


            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT App_Name,Price,Size,Genre FROM Application WHERE App_ID  IN (SELECT App_ID FROM Apps_Downloaded  WHERE ([User_ID]=@uid))";
            cmd.Parameters.AddWithValue("@uid", str);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();

            con.Close();

        }
        protected void Button1_click(object sender, EventArgs e)
        {
            Session["user1"] =Label1.Text;
            Response.Redirect("~/user/search.aspx");
        }
        protected void Button2_click(object sender, EventArgs e)
        {
            Response.Redirect("~/Welcome/welcome.aspx");
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}