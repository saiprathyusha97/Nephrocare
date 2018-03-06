using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace ProjectWebForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                if (oiguriachk.Checked == true)
                    oiguriatxt.Visible = true;
                else
                {
                    oiguriatxt.Visible = false;
                }
                if (anuriachk.Checked == true)
                {
                    Anuriatxt.Visible = true;
                }
                else
                {
                    Anuriatxt.Visible = false;
                }
                if (Polyuriachk.Checked == true)
                {
                    polyuriatxt.Visible = true;
                }
                else
                {
                    polyuriatxt.Visible = false;
                }
                if (Dysuriachk.Checked == true)
                {
                    dysuriatxt.Visible = true;
                }
                else
                {
                    dysuriatxt.Visible = false;
                }
                if (Hematuriachk.Checked == true)
                {
                    hematuriatxt.Visible = true;
                }
                else
                {
                    hematuriatxt.Visible = false;
                }
                if (Graveluriachk.Checked == true)
                {
                    graveluriatxt.Visible = true;
                }
                else
                {
                    graveluriatxt.Visible = false;
                }
                if (Chyluriachk.Checked == true)
                {
                    chyluriatxt.Visible = true;
                }
                else
                {
                    chyluriatxt.Visible = false;
                }
                if (Hesitancychk.Checked == true)
                {
                    hesitancytxt.Visible = true;
                }
                else
                {
                    hesitancytxt.Visible = false;
                }
                if (Poorchk.Checked == true)
                {
                    poorstreamtxt.Visible = true;
                }
                else
                {
                    poorstreamtxt.Visible = false;
                }
                if (Dribblingchk.Checked == true) { dribblingtxt.Visible = true; } else { dribblingtxt.Visible = false; }
                if (Frequencychk.Checked == true) { frequencytxt.Visible = true; } else { frequencytxt.Visible = false; }
                if (retentionchk.Checked == true) { retentiontxt.Visible = true; } else { retentiontxt.Visible = false; }
                if (Flankchk.Checked == true) { flankpaintxt.Visible = true; } else { flankpaintxt.Visible = false; }
                if (Renalchk.Checked == true) { renalcolictxt.Visible = true; } else { renalcolictxt.Visible = false; }
                if (Loinchk.Checked == true) { lionpaintxt.Visible = true; } else { lionpaintxt.Visible = false; }
                if (Puffinesschk.Checked == true) { puffinesstxt.Visible = true; } else { puffinesstxt.Visible = false; }
                if (Edemachk.Checked == true) { edemafeettxt.Visible = true; } else { edemafeettxt.Visible = false; }
                if (Anasarcachk.Checked == true) { anasarcatxt.Visible = true; } else { anasarcatxt.Visible = false; }
                if (Dysponeachk.Checked == true) { dysponeatxt.Visible = true; } else { dysponeatxt.Visible = false; }
                if (Puritischk.Checked == true) { puritistxt.Visible = true; } else { puritistxt.Visible = false; }
                if (Altchk.Checked == true) { Altsensoriumtxt.Visible = true; } else { Altsensoriumtxt.Visible = false; }
                if (Astheniachk.Checked == true) { astheniatxt.Visible = true; } else { astheniatxt.Visible = false; }
                if (Backchk.Checked == true) { backachetxt.Visible = true; } else { backachetxt.Visible = false; }
                if (Bodypainschk.Checked == true) { bodypainstxt.Visible = true; } else { bodypainstxt.Visible = false; }
                if (bonychk.Checked == true) { bonydeformitytxt.Visible = true; } else { bonydeformitytxt.Visible = false; }
                if (Musclechk.Checked == true) { Musclepaintxt.Visible = true; } else { Musclepaintxt.Visible = false; }
                if (abdpchk.Checked == true) { abdpaintxt.Visible = true; } else { abdpaintxt.Visible = false; }
                if (chestchk.Checked == true) { chestpaintxt.Visible = true; } else { chestpaintxt.Visible = false; }
                if (headchk.Checked == true) { headachetxt.Visible = true; } else { headachetxt.Visible = false; }
                if (libidochk.Checked == true) { libidotxt.Visible = true; } else { libidotxt.Visible = false; }
                if (photophobiachk.Checked == true) { photophobiatxt.Visible = true; } else { photophobiatxt.Visible = false; }
                if (abd_d_chk.Checked == true) { abddistensiontxt.Visible = true; } else { abddistensiontxt.Visible = false; }
                if (lympchk.Checked == true) { lymphnodetxt.Visible = true; } else { lymphnodetxt.Visible = false; }
                if (feverchk.Checked == true) { fevertxt.Visible = true; } else { fevertxt.Visible = false; }
                if (chillschk.Checked == true) { chillstxt.Visible = true; } else { chillstxt.Visible = false; }
                if (rigorschk.Checked == true) { rigorstxt.Visible = true; } else { rigorstxt.Visible = false; }
                if (sorethroatchk.Checked == true) { sorethroattxt.Visible = true; } else { sorethroattxt.Visible = false; }
                if (pigmenchk.Checked == true) { pigmentationtxt.Visible = true; } else { pigmentationtxt.Visible = false; }
                if (bleedchk.Checked == true) { bleedingtxt.Visible = true; } else { bleedingtxt.Visible = false; }
                if (hairchk.Checked == true) { hairlosstxt.Visible = true; } else { hairlosstxt.Visible = false; }
                if (drowsinesschk.Checked == true) { drowsinesstxt.Visible = true; } else { drowsinesstxt.Visible = false; }
                if (paresthchk.Checked == true) { parsethesiatxt.Visible = true; } else { parsethesiatxt.Visible = false; }
                if (coghchk.Checked == true) { cougntxt.Visible = true; } else { cougntxt.Visible = false; }
                if (expectchk.Checked == true) { exoectorationttxt.Visible = true; } else { exoectorationttxt.Visible = false; }
                if (nauschk.Checked == true) { nauseatxt.Visible = true; } else { nauseatxt.Visible = false; }
                if (vomitchk.Checked == true) { vomittingtxt.Visible = true; } else { vomittingtxt.Visible = false; }
                if (genrachk.Checked == true) { genarilizeweaktxt.Visible = true; } else { genarilizeweaktxt.Visible = false; }
                if (anorchk.Checked == true) { anorexiatxt.Visible = true; } else { anorexiatxt.Visible = false; }
                if (blurrchk.Checked == true) { blurrvisiontxt.Visible = true; } else { blurrvisiontxt.Visible = false; }
                if (deafchk.Checked == true) { deafnesstxt.Visible = true; } else { deafnesstxt.Visible = false; }
            }
        }

        protected void Submit(object sender, EventArgs e)
        {

            //if (txtid.Text != "")
            //{
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["NephroCare"].ConnectionString);
                SqlCommand cmd1 = new SqlCommand("select aadhar_number  from page1Table where aadhar_number=@id2", conn);

                cmd1.Parameters.AddWithValue("@id2", txtid.Text.Trim());
                conn.Open();
                SqlDataReader dr = cmd1.ExecuteReader();

                if (dr.HasRows)
                {
                    conn.Close();
                    SqlCommand cmd2 = new SqlCommand("select Id  from [database] where Id=@id1", conn);

                    cmd2.Parameters.AddWithValue("@id1", txtid.Text.Trim());
                    conn.Open();
                    SqlDataReader dr1 = cmd2.ExecuteReader();
                    if (dr1.HasRows)
                    {
                        conn.Close();
                        lblpop.Text = "user (" + txtid.Text + ") Alredy registered part 2";
                        ModalPopupExtender1.Show();

                    }
                    else
                    {
                        conn.Close();

                        SqlCommand cmd = new SqlCommand("Page2Reg", conn);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add(new SqlParameter("@ID", Convert.ToInt64(txtid.Text.Trim())));

                        cmd.Parameters.Add(new SqlParameter("@CAD", cadchk.Checked ? "yes" : "no"));
                        if (string.IsNullOrEmpty(cadtxt.Text.Trim()))
                        {
                            cmd.Parameters.Add(new SqlParameter("@CAD_Date", DBNull.Value));
                        }
                        else
                        {
                            cmd.Parameters.Add(new SqlParameter("@CAD_Date", cadtxt.Text.Trim()));
                        }

                        cmd.Parameters.Add(new SqlParameter("@CAG", CAGChk.Checked ? "yes" : "no"));
                        if (string.IsNullOrEmpty(cagtxt.Text.Trim()))
                        {
                            cmd.Parameters.Add(new SqlParameter("@CAG_Date", DBNull.Value));
                        }
                        else
                        {
                            cmd.Parameters.Add(new SqlParameter("@CAG_Date", cagtxt.Text.Trim()));
                        }

                        cmd.Parameters.Add(new SqlParameter("@CABG", CABGCH.Checked ? "yes" : "no"));
                        if (cabgtxt.Text.Trim() == string.Empty)
                            cmd.Parameters.Add(new SqlParameter("@CABG_date", DBNull.Value));
                        else
                        {
                            cmd.Parameters.Add(new SqlParameter("@CABG_date", cagtxt.Text.Trim()));
                        }

                        cmd.Parameters.Add(new SqlParameter("@PTCAStent", PTCAchk.Checked ? "yes" : "no"));
                        if (ptcatxt.Text.Trim() == "")
                        {
                            cmd.Parameters.Add(new SqlParameter("@PTCAStent_Date", DBNull.Value));
                        }
                        else
                        {
                            cmd.Parameters.Add(new SqlParameter("@PTCAStent_Date", ptcatxt.Text.Trim()));
                        }

                        cmd.Parameters.Add(new SqlParameter("@CVA", cvachk.Checked ? "yes" : "no"));
                        if (cvatxt.Text.Trim() == string.Empty)
                        {
                            cmd.Parameters.Add(new SqlParameter("@CVA_Date", DBNull.Value));
                        }
                        else
                        {
                            cmd.Parameters.Add(new SqlParameter("@CVA_Date", cvatxt.Text.Trim()));
                        }

                        cmd.Parameters.Add(new SqlParameter("@Obesity", Obesitychk.Checked ? "yes" : "no"));
                        if (Obesitytxt.Text.Trim() == "")
                        {
                            cmd.Parameters.Add(new SqlParameter("@Obesity_Date", DBNull.Value));
                        }
                        else
                        {
                            cmd.Parameters.Add(new SqlParameter("@Obesity_Date", Obesitytxt.Text.Trim()));
                        }

                        cmd.Parameters.Add(new SqlParameter("@BPH", BPHchk.Checked ? "yes" : "no"));
                        if (bphtxt.Text.Trim() == "")
                        {
                            cmd.Parameters.Add(new SqlParameter("@BPH_Date", DBNull.Value));
                        }
                        else
                        {
                            cmd.Parameters.Add(new SqlParameter("@BPH_Date", bphtxt.Text.Trim()));
                        }

                        cmd.Parameters.Add(new SqlParameter("@TB", Tbchk.Checked ? "yes" : "no"));
                        if (tbtxt.Text.Trim() == "")
                        {
                            cmd.Parameters.Add(new SqlParameter("@TB_date", DBNull.Value));
                        }
                        else
                        {

                            cmd.Parameters.Add(new SqlParameter("@TB_date", tbtxt.Text.Trim()));
                        }

                        cmd.Parameters.Add(new SqlParameter("@HBs_Ag", hbschk.Checked ? "yes" : "no"));
                        if (hbstxt.Text.Trim() == "")
                        {
                            cmd.Parameters.Add(new SqlParameter("@HBs_Ag_date", DBNull.Value));
                        }
                        else
                        {
                            cmd.Parameters.Add(new SqlParameter("@HBs_Ag_date", DBNull.Value));
                        }

                        cmd.Parameters.Add(new SqlParameter("@HCV", hcvchk.Checked ? "yes" : "no"));
                        if (hcvtxt.Text.Trim() == "")
                        {
                            cmd.Parameters.Add(new SqlParameter("@HCV_Date", DBNull.Value));
                        }
                        else
                        {
                            cmd.Parameters.Add(new SqlParameter("@HCV_Date", hcvtxt.Text.Trim()));
                        }

                        cmd.Parameters.Add(new SqlParameter("@HIV", HIvchk.Checked ? "yes" : "no"));
                        if (hivtxt.Text.Trim() == "")
                        {
                            cmd.Parameters.Add(new SqlParameter("@HIV_Date", DBNull.Value));
                        }
                        else
                        {
                            cmd.Parameters.Add(new SqlParameter("@HIV_Date", hivtxt.Text.Trim()));
                        }
                        //Startinvestagatoion history
                        cmd.Parameters.Add(new SqlParameter("@Oliguria", oiguriachk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Oliguria_tp", oiguriatxt.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Anuria", anuriachk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Anuria_tp", Anuriatxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Polyuria", Polyuriachk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Polyuria_tp", polyuriatxt.Text));

                        cmd.Parameters.Add(new SqlParameter("@Dysuria", Dysuriachk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Dysuria_tp", dysuriatxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Hernaturia", Hematuriachk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Hernaturia_tp", hematuriatxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Graveluria", Graveluriachk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Graveluria_tp", graveluriatxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Chyluria", Chyluriachk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Chyluria_tp", chyluriatxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Hesitancy", Hesitancychk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Hesitancy_tp", hesitancytxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Poor_Stream", Poorchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Poor_Stream_tp", poorstreamtxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Dribbling", Dribblingchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Dribbling_tp", dribblingtxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Frequency", Frequencychk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Frequency_tp", frequencytxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Retention", retentionchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Retention_1_tp", retentiontxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Flank_Pain", Flankchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Flank_Pain_tp", flankpaintxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Renal_Colic", Renalchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Renal_Colic_tp", renalcolictxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Loin_pain", Loinchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Loin_pain_tp", lionpaintxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Puffines", Puffinesschk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Puffines_tp", puffinesstxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Anasarca", Anasarcachk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Anasarca_tp", anasarcatxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Dysponea", Dysponeachk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Dysponea_tp", dysponeatxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Pruritis", Puritischk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Pruritis_tp", puritistxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Alt_Sensorium", Altchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Alt_Sensorium_tp", Altsensoriumtxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Asthenia", Astheniachk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Asthenia_tp", astheniatxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Back_Ache", Backchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Back_Ache_tp", backachetxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Body_Pains", Bodypainschk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Body_Pains_tp", bodypainstxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Bony_deformity", bonychk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Bony_deformity_tp", bonydeformitytxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Muscle_Pain", Musclechk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Muscle_Pain_tp", Musclepaintxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Abd_Pain", abdpchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Abd_Pain_tp", abdpaintxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Chest_Pain", chestchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Chest_Pain_tp", chestpaintxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Head_Pain", headchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Head_Pain_tp", headachetxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@libido", libidochk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@libido_tp", libidotxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Photophobia", photophobiachk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Photophobia_tp", photophobiatxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Abd_Distension", abd_d_chk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Abd_Distension_tp", abddistensiontxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Lymph_Nodes", lympchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Lymph_Nodes_tp", lymphnodetxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Fever", feverchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Fever_tp", fevertxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Chills", chillschk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Chills_tp", chillstxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@regors", rigorschk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@regors_tp", rigorstxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Sore_Throat", sorethroatchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Sore_Throat_tp", sorethroattxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Pigmentation", pigmenchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Pigmentation_tp", pigmentationtxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Bleeding", bleedchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Bleeding_tp", bleedingtxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Hair_Loss", hairchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Hair_Loss_tp", hairlosstxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Drowsiness", drowsinesschk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Drowsiness_tp", drowsinesstxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Paresthesia", paresthchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Paresthesia_tp", parsethesiatxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Cough", coghchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Cough_tp", cougntxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Expectoration", expectchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Expectoration_tp", exoectorationttxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Nausea", nauschk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Nausea_tp", nauseatxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Vomitting", vomitchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Vomitting_tp", vomittingtxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Generalised_Weakness", genrachk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Generalised_Weakness_tp", genarilizeweaktxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Anorexia", anorchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Anorexia_tp", anorexiatxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@BlurringOfVision", blurrchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Blurring_Of_Vision_tp", blurrvisiontxt.Text));
                        cmd.Parameters.Add(new SqlParameter("@Deafness", deafchk.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Deafness_tp", deafnesstxt.Text));
                        //end the data
                        cmd.Parameters.Add(new SqlParameter("@History_Obtained_From", history.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@DM_TimePeriod", dmtp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@HTN_TimePeriod", htntp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@CAD_TimePeriod", cadtp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@CVA_TimePeriod", cvatp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Jaundice_TimePeriod", jtp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Jaundice_Treated_y_n", jyn.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@TB_TimePeriod", tbtp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@TB_Treated_y_n", tbyn.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Surgeries", stp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Blood_Tx_TimePeriod", btp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Edema_TimePeriod", etp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Edema_Treated_y_n", eyn.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Stones_Timeperiod", sttp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Stones_Treated_y_n", styn.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@UTI_TimePeriod", utitp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@UTI_Treated_y_n", utiyn.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Cancer_TimePeriod", ctp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Cancer_Treated_y_n", cyn.Checked ? "yes" : "no"));
                        cmd.Parameters.Add(new SqlParameter("@Alcohol_use_TimePeriod", atp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Cigarette_TimePeriod", ttp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Drug_abuse_TimePeriod", datp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@HIV_risk_factors", hivrtp.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Occupation", occ.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Income_per_Year", ipy.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@NoFamilyMembers_effected", nopa.Text.Trim()));
                        cmd.Parameters.Add(new SqlParameter("@Relation", relation.Text.Trim()));
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        Response.Redirect("part2.aspx");
                    }
                }



            //}
            //else
            //{


            //    lblpop.Text =;
            //    ModalPopupExtender1.Show();
            //}
        }








        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void logout_c(object sender, EventArgs e)
        {
            Response.Redirect("loginpage.aspx");
            Session.Remove("username");

        }
    }
}

