using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem.Accounts
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Context.User.Identity.Name))
            {
                HyperLink1.Visible = true;
                Response.Redirect("~/Accounts/Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txt_OldPassword.Text==txt_NewPassword.Text)
            {
                Label1.Visible = true;
                Label1.Text = "Please enter a new password.";
            }
            else
            {
                if (Page.IsValid)
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString);
                    try
                    {
                        SqlCommand cmd = new SqlCommand("update Users set Password= "+"'" + txt_NewPassword.Text +"'"+" where UserName= " + "'" + Context.User.Identity.Name + "'" + "and Password= " + "'" + txt_OldPassword.Text + "'", conn);
                        conn.Open();
                        int result = cmd.ExecuteNonQuery();
                        Label1.Visible = true;
                        Label1.Text = "Password changed successfully.";
                        conn.Close();
                        FormsAuthentication.SignOut();
                        Response.Redirect("~/Accounts/Login.aspx");
                    }
                    catch (SqlException ex)
                    {
                        Label1.Visible = true;
                        Label1.Text = ex.Message;
                    }
                }
            }

        }
    }
}