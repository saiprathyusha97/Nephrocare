using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Nephro_Care
{
    public class Checkduplicate
    {
        public static bool getmethod(string txtbox)
        { 
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NephroCare"].ConnectionString);
        con.Open();

            SqlCommand cmd1 = new SqlCommand("select aadhar_number  from page1Table where aadhar_number=@email", con);

              cmd1.Parameters.AddWithValue("@email",txtbox );

            SqlDataReader dr = cmd1.ExecuteReader();

            return dr.HasRows;
            }

    
    }
}