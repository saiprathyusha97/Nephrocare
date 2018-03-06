using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace Nephro_Care
{
    public partial class Part1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                
            }
           
           
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            grdMovies.Visible = true;
            try
            {
                p1grd.Insert();
            }
            catch(Exception ex)
            {
                lblpopup.Text = ex.ToString();
                ModalPopupExtender1.Show();
            }
            

        }
        protected void updateClick(object sender, EventArgs e)
        {
            GridView1.Visible = true;

            SqlDataSource1.Insert();

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NephroCare"].ConnectionString);
            con.Open();

            bool m = Nephro_Care.Checkduplicate.getmethod(AadharNumbertxt.Text);
            if(m==true)
            {
                lblpopup.Text = "user already exists";
               
                ModalPopupExtender1.Show();
            }
            else
            {

               
                ModalPopupExtender1.Show();
                con.Close();
                HttpPostedFile ps = fppic1.PostedFile;
                Stream s = ps.InputStream;
                BinaryReader br = new BinaryReader(s);
                Byte[] sdat = br.ReadBytes((int)s.Length);
                    SqlCommand cmd = new SqlCommand("Table1_inst", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@pic", sdat);
                cmd.Parameters.Add(new SqlParameter("@Aadhar_Number", Convert.ToInt32(AadharNumbertxt.Text.Trim())));
                cmd.Parameters.Add(new SqlParameter("@Name", Nametxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Age", Agetxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@gender", Gender.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Date_Of_Birth", DateOfBirthtxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@First_Name", FirstNametxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Family_Name", FamilyNametxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Address", Addresstxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Mobile_No", PhoneNotxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Email_Id", EmailIdtxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Education", Educationtxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Occupation", Occupationtxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Financial_Status", FinancialStatustxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@BGT", BGTtxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Treating_Doctor", TreatingDoctortxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@reference_by", RadioButtonList2.SelectedValue));
                cmd.Parameters.Add(new SqlParameter("@OPNO", OPNOtxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Weight_kgs", Weighttxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Height_cms", Heighttxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@BSA", BSAtxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@BMI", BMItxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@MDRD_GFR", MDRDGFRtxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Blood_Group", DropDown1.SelectedValue));
                cmd.Parameters.Add(new SqlParameter("@HBs_Ag", HBsAgtxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@HCV", HCVtxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@HIV", HIVtxt.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@DM_DMN", DMN.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@HTN", HTN.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@CKD_Stage", CKDStage.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@CGN", CGN.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@CIN", CIN.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@ESRD", ESRD.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Ac_CRF", AcCRF.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@ARF", ARF.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@RPRF", RPRF.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@AGN", AGN.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@NS", NS.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@SLE", SLE.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@MCD", MCD.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@MN", MN.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@FSGS", FSGS.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@MPGN", MPGN.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Ig_A", IgA.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Cres_GN", CresGN.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@ADPKD", ADPKD.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@MM", MM.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Amyld", AmyId.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@RTA", RTA.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@RAS", RAS.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@VUR", VUR.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@ROD", ROD.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Ob_Ur", ObUr.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Fluorisis", Fluorosis.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Rickets", Rickets.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Cancer", Cancer.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@HKPP", HKPP.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@UTI", UTI.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@BPH", BPH.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Malaria", Malaria.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Post_GE", PostGE.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@SnakeBite", SnakeBite.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Sepsis", Sepsis.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Alport", Alport.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@HSP", HSP.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Others", OTHERS.Text.Trim()));
                con.Open();
                cmd.ExecuteNonQuery();

                ModalPopupExtender1.Hide();

            }
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Loginpage.aspx");
        }
    }
}