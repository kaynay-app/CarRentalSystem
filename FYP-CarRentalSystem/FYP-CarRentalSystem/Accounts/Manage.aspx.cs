using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem.Accounts
{
    public partial class Manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Context.User.Identity.Name))
            {
               
                Response.Redirect("~/Accounts/Register.aspx");
            }

            lbl_user.Text = Context.User.Identity.Name;
        }
    }
}