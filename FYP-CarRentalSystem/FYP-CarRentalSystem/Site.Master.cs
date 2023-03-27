using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string command = "select UserName,Password from Users where UserName='" + txtUsername.Text.ToString() + "' and Password='" + txtPassword.Text.ToString() + "'";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(command, conn);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        FailureText.Visible = true;
                        FailureText.Text = "Login Sucess......!!";
                        Response.Redirect("~/ManageProfile.aspx");

                    }
                    else
                    {

                        Response.Redirect("~/Login.aspx");
                        FailureText.Visible = true;
                        FailureText.Text = "UserId & Password Is not correct Try again..!!";
                    }
                    conn.Close();
                }
                catch (Exception ex)
                {
                    FailureText.Text = ex.ToString();

                }
            }
        }
    }
}