using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (!string.IsNullOrWhiteSpace(Request.QueryString["q"]))
                {
                    if (!string.IsNullOrWhiteSpace(Context.User.Identity.Name) || !string.IsNullOrEmpty(Context.User.Identity.Name))
                    {
                        string[] roles = Roles.GetRolesForUser(Context.User.Identity.Name.ToString());
                        if (roles == null || roles.Length == 0)
                        {

                            ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true); 
                        }
                        else
                        {
                            if (roles[0] == "Admin")
                            {
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);    
                            }
                            else if (roles[0] == "Dealer")
                            {
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true); 
                            }
                            else if (roles[0] == "User")
                            {
                               
                            }
                            else if (roles[0] == "Accountant")
                            {
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true); 
                            }

                        }


                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true); 

                    }

                }
            } 
        }
    }
}