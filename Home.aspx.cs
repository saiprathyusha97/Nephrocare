using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWebForm
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {
                Label1.Text = Session["username"].ToString();
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void searchbtn_Click(object sender, EventArgs e)
        {
            Session["Search"] = txtsearch.Text;
            Response.Redirect("RecpDetails.aspx");
        }

      

        protected void logout_c(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Loginpage.aspx");

        }
    }
}