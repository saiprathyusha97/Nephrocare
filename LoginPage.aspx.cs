using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Nephro_Care
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Login(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["NephroCare"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select count(*) from Logon where username = '" + username.Text + "' and password = '" + password.Text + "' ", conn);
            conn.Open();
            string i = cmd.ExecuteScalar().ToString();
            if (i == "1")
            {
                Session["username"] = username.Text;
                Response.Redirect("~/Home.aspx");

            }
            else
            {
                Response.Write("Check your credentials!!");
            }

         
        } 
    }
}
   