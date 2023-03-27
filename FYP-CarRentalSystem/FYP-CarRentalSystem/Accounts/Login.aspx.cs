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
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Context.User.Identity.Name))
            {
                Response.Redirect("/Accounts/Manage.aspx");
            }
            if (!IsPostBack)
            {
                UserName.Focus();
                
            }
            
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                if (AuthenticateUser(UserName.Text, Password.Text))
                {
                    //Response.Redirect("~/Accounts/Register.aspx");
                    FormsAuthentication.RedirectFromLoginPage(UserName.Text, RememberMe.Checked);
                }
                else
                {
                    FailureText.Text = "Invalid Username and/or Password.";

                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "SetFocus", "<script>document.getElementById('" + FailureText.ClientID + "').focus();</script>");
                    SetFocus(HyperLink1);
                }

                //string CurrentUserName = UserName.Text.ToString();
                //string command = "select UserName,Password from Users where UserName='" + CurrentUserName + "' and Password='" + Password.Text.ToString() + "'";
                //using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))
                //{
                //    try
                //    {
                //        conn.Open();
                //        SqlCommand cmd = new SqlCommand(command, conn);
                //        SqlDataReader sdr = cmd.ExecuteReader();
                //        if (sdr.Read())
                //        {
                //            FailureText.Visible = true;
                //            FailureText.Text = "Login Sucess......!!";
                //            Users.CurrentUser = CurrentUserName;
                //            Response.Write("Welcome" + Users.CurrentUser);
                //            //Response.Redirect("~/WebForm1.aspx");


                //        }
                //        else
                //        {
                //            Users.CurrentUser = null;
                //            Response.Redirect("~/Login.aspx");
                //            FailureText.Visible = true;
                //            FailureText.Text = "UserId & Password Is not correct Try again..!!";
                //        }
                //        conn.Close();
                //    }
                //    catch (Exception ex)
                //    {
                //        FailureText.Text = ex.ToString();

                //    }
                //}


            }
        }

        private bool AuthenticateUser(string username, string password)
        {
            string CS = ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spAuthenticateUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramUsername = new SqlParameter("@UserName", username);
                SqlParameter paramPassword = new SqlParameter("@Password", password);
                cmd.Parameters.Add(paramUsername);
                cmd.Parameters.Add(paramPassword);

                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar();
                return ReturnCode == 1;
            }
        }

        protected void btn_Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default.aspx");
        }
    }
}