using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem
{
    public partial class ShortForm : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!string.IsNullOrWhiteSpace(Context.User.Identity.Name)||!string.IsNullOrEmpty(Context.User.Identity.Name))
            {
                string[] roles = Roles.GetRolesForUser(Context.User.Identity.Name.ToString());
                if (roles == null || roles.Length == 0)
                {
                    AnonymousRightNav.Visible = true;
                    dd_user.Visible = false;
                    dd_admin.Visible = false;
                    dd_dealer.Visible = false;
                    dd_accountant.Visible = false;
                    UserRightNav.Visible = false;
                    AdminRightNav.Visible = false;
                    DealerRightNav.Visible = false;
                    homelink.Visible = true;
                    AccountantRightNav.Visible = false;
                    
                }
                else
                {
                    if (roles[0] == "Admin")
                    {
                        dd_admin.Visible = true;
                        AdminRightNav.Visible = true;
                        UserRightNav.Visible = false;
                        DealerRightNav.Visible = false;
                        AnonymousRightNav.Visible = false;
                        dd_accountant.Visible = true;
                        AccountantRightNav.Visible = true ;
                        homelink.Visible = false;
                    }
                    else if (roles[0] == "Dealer")
                    {
                        dd_dealer.Visible = true;
                        DealerRightNav.Visible = true;
                        UserRightNav.Visible = false;
                        AdminRightNav.Visible = false;
                        dd_admin.Visible = false;
                        dd_user.Visible = false;
                        dd_accountant.Visible = false;
                        AccountantRightNav.Visible = false;
                        AnonymousRightNav.Visible = false;
                        homelink.Visible = false;
                    }
                    else if (roles[0] == "User")
                    {
                        dd_user.Visible = true;
                        UserRightNav.Visible = true;
                        DealerRightNav.Visible = false;
                        AdminRightNav.Visible = false;
                        dd_admin.Visible = false;
                        dd_dealer.Visible = false;
                        AnonymousRightNav.Visible = false;
                        homelink.Visible = false;
                        dd_accountant.Visible = false;
                        AccountantRightNav.Visible = false;
                    }
                    else if (roles[0] == "Accountant")
                    {
                        dd_accountant.Visible = true;
                        AccountantRightNav.Visible = true;
                        dd_user.Visible = false;
                        UserRightNav.Visible = false;
                        DealerRightNav.Visible = false;
                        AdminRightNav.Visible = false;
                        dd_admin.Visible = false;
                        dd_dealer.Visible = false;
                        AnonymousRightNav.Visible = false;
                        homelink.Visible = false;
                    }
                
                }
               

            }
            else
            {
                AnonymousRightNav.Visible = true;
                homelink.Visible = true;
                dd_user.Visible = false;
                dd_admin.Visible = false;
                dd_dealer.Visible = false;
                dd_accountant.Visible = false;
                AccountantRightNav.Visible = false;
                UserRightNav.Visible = false;
                AdminRightNav.Visible = false;
                DealerRightNav.Visible = false;

            }

            
           
        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            //Context.Authentication.SignOut();
            FormsAuthentication.SignOut(); 
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string search = txt_Search.Text.ToString();

            Response.Redirect("~/SearchResult.aspx?q=" + search);
           
        }
    }
}