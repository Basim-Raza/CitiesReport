using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CitiesReport
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var countryCode = CountryList.SelectedItem;

            var connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("select * from City where CountryCode = @countryCode", con);
                cmd.Parameters.AddWithValue("@countryCode", countryCode.ToString());

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);

                ReportViewer1.LocalReport.DataSources.Clear();
                ReportDataSource src = new ReportDataSource("DataSet1", dt);
                ReportViewer1.LocalReport.ReportPath = "CityReport.rdlc";
                ReportViewer1.LocalReport.DataSources.Add(src);
            }
        }
    }
}