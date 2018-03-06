using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nephro_Care
{
    public partial class RecpDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                if (Session["Search"] != null)
                {
                    GridView1.DataSource = SqlDataSource1;
                    GridView1.DataBind();
                }
                else
                {
                    GridView1.DataSource = datasource;
                    GridView1.DataBind();
                }
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = SqlDataSource2;
            GridView1.DataBind();
        }
    }
}