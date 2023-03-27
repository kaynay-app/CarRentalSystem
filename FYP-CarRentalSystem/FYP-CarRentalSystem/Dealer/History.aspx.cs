using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem.Dealer
{
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string command = "select * from Cars Where [UserName] = " + "'" + Context.User.Identity.Name.ToString() + "'";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))
            {

                SqlDataAdapter da = new SqlDataAdapter(command, conn);
                DataTable dtbl = new DataTable();
                da.Fill(dtbl);
                GridView2.DataSource = dtbl;
                GridView2.DataBind();
            }
        }
    }
}