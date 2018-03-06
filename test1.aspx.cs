using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nephro_Care
{
    public partial class test1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                {
                if (chkcontrolno.Checked == true)
                    txtcontrolno.Visible = true;
                else
                    txtcontrolno.Visible = false;
            }
           
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked==true)
                TextBox1.Visible = true;
            else
                TextBox1.Visible = false;
        }
    }
}