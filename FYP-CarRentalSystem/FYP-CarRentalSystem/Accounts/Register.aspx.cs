using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem
{
    public partial class Register1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_result.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string CS = ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    //string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txt_Pasword.Text, "SHA1");

                    SqlCommand sql_insert_command = new SqlCommand("spRegisterUsers", con);
                    sql_insert_command.CommandType = CommandType.StoredProcedure;
                    sql_insert_command.Parameters.AddWithValue("@UserName", txt_UserName.Text.ToString());
                    sql_insert_command.Parameters.AddWithValue("@FirstName", txt_FirstName.Text.ToString());
                    sql_insert_command.Parameters.AddWithValue("@LastName", txt_LastName.Text.ToString());
                    sql_insert_command.Parameters.AddWithValue("@Password", txt_Pasword.Text.ToString());
                    sql_insert_command.Parameters.AddWithValue("@EmailId", txt_Email.Text.ToString());
                    sql_insert_command.Parameters.AddWithValue("@ContactNo", txt_ContactNo.Text.ToString());
                    sql_insert_command.Parameters.AddWithValue("@Address", txt_Address.Text.ToString());
                    sql_insert_command.Parameters.AddWithValue("@AltEmail", txt_AltEmail.Text.ToString());
                    sql_insert_command.Parameters.AddWithValue("@AltContact", txt_AltContact.Text.ToString());
                    sql_insert_command.Parameters.AddWithValue("@DriverLicInfo", txt_DriverLN.Text.ToString());
                    
                    con.Open();
                    int ReturnCode = (int)sql_insert_command.ExecuteScalar();
                    if (ReturnCode == -1)
                    {
                        lbl_result.Visible = true;
                        lbl_result.Text = "User name already in use, please choose another user name";
                    }
                    else
                    {
                        Response.Redirect("~/Accounts/Login.aspx");
                    }

                }


            }

           
        }
    }
}