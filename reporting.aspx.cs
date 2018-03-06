using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NephroCare
{
    public partial class reporting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();
                ObjectDataSource1.SelectParameters.Add(new Parameter { Name = "id", DefaultValue = Request.QueryString[0] });
                ObjectDataSource2.SelectParameters.Add(new Parameter { Name = "id", DefaultValue = Request.QueryString[0] });
                ObjectDataSource3.SelectParameters.Add(new Parameter { Name = "id", DefaultValue = Request.QueryString[0] });
                ObjectDataSource4.SelectParameters.Add(new Parameter { Name = "id", DefaultValue = Request.QueryString[0] });

            }
            else
            {
                Response.Redirect("loginpage.aspx");
            }
        }

        //private test obj(String Query,string pass)
        //{
        //    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["NephroCare"].ConnectionString))
        //    {
        //        SqlCommand cmd = new SqlCommand(Query);

        //        using (SqlDataAdapter SDA = new SqlDataAdapter())
        //        {
        //            cmd.Connection = conn;
        //            cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(pass));
        //            SDA.SelectCommand = cmd;
        //            using (test obj1 = new test())
        //            {
        //                SDA.Fill(obj1, "project_s");
        //                return obj1;
        //            }
        //        }
        //    }
        //}

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Loginpage.aspx");
        }
    }
}