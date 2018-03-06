using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace ProjectWebForm
{
    public partial class Part3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {

            }
            else
            {
                Response.Redirect("loginpage.aspx");
            }
            
        }

        protected void Submit(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["NephroCare"].ConnectionString);
            SqlCommand cmd1 = new SqlCommand("select aadhar_number  from page1Table where aadhar_number=@id2", conn);

            cmd1.Parameters.AddWithValue("@id2", adharid.Text.Trim());
            conn.Open();
            SqlDataReader dr = cmd1.ExecuteReader();

            if (dr.HasRows)
            {
                conn.Close();
                SqlCommand cmd2 = new SqlCommand("select Id  from [part3] where Id=@id1", conn);

                cmd1.Parameters.AddWithValue("@id1", adharid.Text.Trim());
                conn.Open();
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.HasRows)
                {
                    lblpop.Text = "user (" + adharid.Text + ") Alredy registered part 3";
                    ModalPopupExtender1.Show();

                }
                else
                {
                    conn.Close();


                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Page3Reg", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@Id", adharid.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Skin", skintxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Eyes", eyestxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@ENT", enttxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Resp", resptxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@CVS", cvstxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Gastrointestinal", gastxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Genito_urinary", gentxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Reproductive", reptxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Musculo_Skeletal", mstxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Allergies", alltxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Neurological", neurotxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Psychological", psyctxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Endocrinological", endotxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Hematological", hemattxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Temp", temptxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@PR", prtxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@RR", rrtxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Pallor", pallortxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Icterus", icterustxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Rash", rashtxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Pedal_Edema", pedaltxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Puffiness", puffitxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Supine", supinetxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Standing", standingtxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@RUL", rultxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@LUL", lultxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@RLL", rlltxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@LLL", llltxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Eyes_1", eyes1txt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@ENT_1", ent1txt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Cardiology", cardtxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Respiratory", respitxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Abdomen", abdtxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Nervous_System", nervtxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Skin_1", skin1txt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Hematology", hematxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Psychiatry", psytxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Gynacology", gyntxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Musculo_Skeletal_1", mustxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Data_Review", drtxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Provisional_diagnosis", provtxt.Text.Trim()));
                    cmd.Parameters.Add(new SqlParameter("@Comorbid_conditions", comtxt.Text.Trim()));

                    cmd.ExecuteNonQuery();
                }
            }
            else
            {

                lblpop.Text = "user(" + txtid.Text + ") didnt registerd basic registration";
                ModalPopupExtender1.Show();
            }
        }

        protected void Update (object sender , EventArgs e)
        {
            grdmed.Visible = true;
            srcmed.Insert();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            
        }
    }
}