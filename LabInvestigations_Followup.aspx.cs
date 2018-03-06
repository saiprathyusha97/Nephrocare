using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nephro_Care
{
    public partial class LabInvestigations_Followup : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["NephroCare"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]==null)
            {
                Response.Redirect("loginpage.aspx");
            }
            else
            {
                Label1.Text = Session["username"].ToString();
            }
        }

        protected void gettab(object sender, EventArgs e)
        {
            submitshow.Visible = true;
            SqlCommand cmd = new SqlCommand("select name,pic from Root_IDs where Adharnumber=@id", conn);
            conn.Open();
            cmd.Parameters.AddWithValue("@id", txtid.Text);
            SqlDataReader sdr = cmd.ExecuteReader();
            while(sdr.Read())
            {
                lblname.Text = sdr["name"].ToString();
                byte[] bytes = (byte[])sdr["pic"];
                string strBase64 = Convert.ToBase64String(bytes);
                img.ImageUrl = "data:Image/jpg;base64," + strBase64;
            }
            table1.Visible = true;

        }
        protected void insertdata(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("fp_insert", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@adharnumber", txtid.Text.Trim());
            cmd.Parameters.AddWithValue("@Fdate", Convert.ToDateTime(txtdate.Text));
            cmd.Parameters.AddWithValue("@hb", txthb.Text);
            cmd.Parameters.AddWithValue("@Pcv", txtpcv.Text);
            cmd.Parameters.AddWithValue("@TotalWBC", txtwbc.Text);
            cmd.Parameters.AddWithValue("@DLCp", txtdlcp.Text);
            cmd.Parameters.AddWithValue("@dlcl", txtdlcL.Text);
            cmd.Parameters.AddWithValue("@dlcm", txtdlcm.Text);
            cmd.Parameters.AddWithValue("@dlce", txtdlce.Text);
            cmd.Parameters.AddWithValue("@ReticCount", txtrectic.Text);
            cmd.Parameters.AddWithValue("@Plateletcount", txtplatelet.Text);
            cmd.Parameters.AddWithValue("@esr", TxtESR.Text);
            cmd.Parameters.AddWithValue("@PeripheralSmear", txtperipsmear.Text);
            cmd.Parameters.AddWithValue("@ph", txtph.Text);
            cmd.Parameters.AddWithValue("@Spgr", txtspgr.Text);
            cmd.Parameters.AddWithValue("@albumin", txtalbumin.Text);
            cmd.Parameters.AddWithValue("@sugar", txtSugar.Text);
            cmd.Parameters.AddWithValue("@ketones", txtkeytones.Text);
            cmd.Parameters.AddWithValue("@RBC", txtrbc.Text);
            cmd.Parameters.AddWithValue("@Wbc", txtwbc.Text);
            cmd.Parameters.AddWithValue("@epcells", txtEP.Text);
            cmd.Parameters.AddWithValue("@granularhyaline", txtgranularhyline.Text);
            cmd.Parameters.AddWithValue("@others", txtothers.Text);
            cmd.Parameters.AddWithValue("huo24", txt24hruop.Text);
            cmd.Parameters.AddWithValue("@totalprotiens", Txttotalprotiens.Text);
            cmd.Parameters.AddWithValue("@ccr", txtccr.Text);
            cmd.Parameters.AddWithValue("@sodium", txtsodium.Text);
            cmd.Parameters.AddWithValue("@pottasium", txtpottasium.Text);
            cmd.Parameters.AddWithValue("@calcium", txtcalcium.Text);
            cmd.Parameters.AddWithValue("@phospate", txtphospate.Text);
            cmd.Parameters.AddWithValue("@uricacid", txturicacid.Text);
            cmd.Parameters.AddWithValue("@vma", txtvma.Text);
            cmd.Parameters.AddWithValue("@microalburminuria", txtmicroalbuminuria.Text);
            cmd.Parameters.AddWithValue("@spotUprotien", txtspotuprotien.Text);
            cmd.Parameters.AddWithValue("@ucreatinine", txtucreatinine.Text);
            cmd.Parameters.AddWithValue("@protcreatratio", txtprotcreat.Text);
            cmd.Parameters.AddWithValue("@Bt", txtbt.Text);
            cmd.Parameters.AddWithValue("@Ct", txtct.Text);
            cmd.Parameters.AddWithValue("@pt", txtpt.Text);
            cmd.Parameters.AddWithValue("@aptt", txtaptt.Text);
            cmd.Parameters.AddWithValue("@bloodgroup", blodgrp.SelectedValue);
            cmd.Parameters.AddWithValue("@Rbs", txtRBS.Text);
            cmd.Parameters.AddWithValue("@fbs", txtfbs.Text);
            cmd.Parameters.AddWithValue("@ppbs", txtppbs.Text);
            cmd.Parameters.AddWithValue("@glhbalc", txtglhbalc.Text);
            cmd.Parameters.AddWithValue("@urea", txturea.Text);
            cmd.Parameters.AddWithValue("@creatinine", txtcreatinine.Text);
            cmd.Parameters.AddWithValue("@chloride", txtchloride.Text);
            cmd.Parameters.AddWithValue("@bicarbonate", txtbicarbonate.Text);
            cmd.Parameters.AddWithValue("@magnesium", txtmagnesium.Text);
            cmd.Parameters.AddWithValue("@cholestrol", txtcholestrol.Text);
            cmd.Parameters.AddWithValue("@HDl", txthdl.Text);
            cmd.Parameters.AddWithValue("@ldl", txtldl.Text);
            cmd.Parameters.AddWithValue("@Vldl", txtVLDL.Text);
            cmd.Parameters.AddWithValue("@triglycerides", txttriglycerides.Text);
            cmd.Parameters.AddWithValue("@tsprotien", txttsprotien.Text);
            cmd.Parameters.AddWithValue("@biltotal", txtbiltotal.Text);
            cmd.Parameters.AddWithValue("@bildirect", txtbildirect.Text);
            cmd.Parameters.AddWithValue("@sgot", txtsgot.Text);
            cmd.Parameters.AddWithValue("@sgpt", txtsgpt.Text);
            cmd.Parameters.AddWithValue("@alp", ALP.Text);
            cmd.Parameters.AddWithValue("@iron", txtiron.Text);
            cmd.Parameters.AddWithValue("@ferritin", txtferratin.Text);
            cmd.Parameters.AddWithValue("@t3", txtt3.Text);
            cmd.Parameters.AddWithValue("@t4", txtt4.Text);
            cmd.Parameters.AddWithValue("@tsh", txttsh.Text);
            cmd.Parameters.AddWithValue("@psh", txtpsh.Text);
            cmd.Parameters.AddWithValue("@vitd3", txtvitd3.Text);
            cmd.Parameters.AddWithValue("@psa", txtpsa.Text);
            cmd.Parameters.AddWithValue("@crp", txtcrp.Text);
            cmd.Parameters.AddWithValue("@ana", txtANA.Text);
            cmd.Parameters.AddWithValue("@antidsDna", txtantidsdna.Text);
            cmd.Parameters.AddWithValue("@hbsag", txthbsag.Text);
            cmd.Parameters.AddWithValue("@antihcv", txtantihcv.Text);
            cmd.Parameters.AddWithValue("@hiv", txthiv.Text);
            cmd.Parameters.AddWithValue("@antihbsag", txtantihbsag.Text);
            cmd.Parameters.AddWithValue("@cmvigg", txtcmvigg.Text);
            cmd.Parameters.AddWithValue("@cmvigm", txtcmvigm.Text);
            cmd.Parameters.AddWithValue("@ANCAC", txtanca.Text);
            cmd.Parameters.AddWithValue("@ancap", txtancap.Text);
            cmd.Parameters.AddWithValue("@spe", txtspe.Text);
            cmd.Parameters.AddWithValue("@vitb12", txtvitb12.Text);
            cmd.Parameters.AddWithValue("@serumfolate", serumfolate.Text);
            cmd.Parameters.AddWithValue("@cystatinc", txtcystatin.Text);
            cmd.Parameters.AddWithValue("@homocysteine", txthomocystatin.Text);
            cmd.Parameters.AddWithValue("@csalevel", txtcsalevel.Text);
            cmd.Parameters.AddWithValue("@tacrolimuslevels", txttacrolimuslevel.Text);
            cmd.Parameters.AddWithValue("@everolimuslevels", txteverolimus.Text);
            cmd.Parameters.AddWithValue("@abgph", txtabhph.Text);
            cmd.Parameters.AddWithValue("@pco2", txtpco2.Text);
            cmd.Parameters.AddWithValue("@po2", txtpo2.Text);
            cmd.Parameters.AddWithValue("@hco3", txthco.Text);
            cmd.Parameters.AddWithValue("@ag", txtag.Text);
            cmd.Parameters.AddWithValue("@po2fo2", txtpo2fo2.Text);
            cmd.Parameters.AddWithValue("@AsplFlAn", txtasciticplunearl.Text);
            cmd.Parameters.AddWithValue("@totalcellcount", txttotalcellcount.Text);
            cmd.Parameters.AddWithValue("@diffcellcount", txtdiffcellcount.Text);
            cmd.Parameters.AddWithValue("@glucose", txtglucose.Text);
            cmd.Parameters.AddWithValue("@ada", txtada.Text);
            cmd.Parameters.AddWithValue("@mantoux", txtmantoux.Text);
            conn.Open();
            cmd.ExecuteNonQuery();

            conn.Close();
            Response.Redirect("labinvestigations_followip.aspx");
        }
        protected void logout(object sender , EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("LoginPage.aspx");
        }
    }
}