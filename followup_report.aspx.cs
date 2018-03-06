using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nephro_Care.webpages
{
    public partial class followup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();
            }
            else
            {
                Response.Redirect("loginpage.aspx");
            }

        }

        protected void logout(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("loginpage.aspx");
                
        }
    }
}