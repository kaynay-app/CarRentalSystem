using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem.Userforms
{
    public partial class ReturnCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrWhiteSpace(Request.QueryString["CarId"]))
                {
                    int CarId = 0;
                    int.TryParse(Request.QueryString["CarId"], out CarId);
                    if (!CarId.Equals(0))
                    {
                        //Response.Write(CarId.ToString());
                    }
                }
            }
            

            //string command = "select Id from Bookings Where [UserName] = " + "'" + Context.User.Identity.Name.ToString() + "'";
            //using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))
            //{

            //    SqlDataAdapter da = new SqlDataAdapter(command, conn);
            //    DataTable dtbl = new DataTable();
            //    da.Fill(dtbl);
            //    DropDownList1.DataSource = dtbl;
            //    DropDownList1.DataBind();
            //    //GridView1.DataSource = dtbl;
            //    //GridView1.DataBind();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string command = "update Bookings set [VerifyCode]=@code Where [CarId]=@carId and [SecretCode]=@secCode and [UserName] = " + "'" + Context.User.Identity.Name.ToString() + "'";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand(command, conn);
                    
                    cmd.Parameters.AddWithValue("@secCode", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@code", TextBox1.Text);
                    cmd.Parameters.AddWithValue("CarId", Request.QueryString["CarId"]);
                    conn.Open();
                    int result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {
                        error_para.InnerText = "Car Returned Successfully.";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                        
                    }
                    else
                    {
                        error_para.InnerText = "Secret Code is Wrong. Please contact to Admin.";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                        
                    }
                    conn.Close();
                    
                }
                catch (SqlException ex)
                {

                    error_para.InnerText = "Error: "+ex.Message;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                }
                
                
            }
            
        }
    }
}