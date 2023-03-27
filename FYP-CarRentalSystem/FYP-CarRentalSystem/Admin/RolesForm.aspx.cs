using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem.Admin
{
    public partial class Roles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (LB_Roles.SelectedIndex != -1 && LB_Users.SelectedIndex != -1)
            {
                if (System.Web.Security.Roles.IsUserInRole(LB_Users.SelectedValue, LB_Roles.SelectedValue))
                {
                    error_para.InnerText = "This user Already in Role";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                   
                    //modal_para.InnerText = "This user Already in Role";
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                }
                else
                {
                    
                    
                    System.Web.Security.Roles.AddUsersToRoles(new string[] { LB_Users.SelectedValue }, new string[] { LB_Roles.SelectedValue });
                    //modal_para.InnerText = "Selected user added to role successfully!";
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                    error_para.InnerText = "Selected user added to role successfully!";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                }

            }
            else
            {
                error_para.InnerText = "Please select user name and role name";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);

                //modal_para.InnerText = "Please select user name and role name";
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (ListBox5.SelectedIndex != -1 && ListBox6.SelectedIndex != -1)
            {
                //remove from role button
                if (System.Web.Security.Roles.IsUserInRole(ListBox5.SelectedValue, ListBox6.SelectedValue))
                {
                    System.Web.Security.Roles.RemoveUsersFromRoles(new string[] { ListBox5.SelectedValue }, new string[] { ListBox6.SelectedValue });
                    error_para.InnerText = "Selected user removed from role successfully!";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                    //modal_para.InnerText = "Selected user removed from role successfully!";
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                }
            }
            else
            {
                error_para.InnerText = "Please select user name and role";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                //modal_para.InnerText="Please select user name and role";
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
           
        }

        protected void ListBox5_SelectedIndexChanged(object sender, EventArgs e)
        {
            //index changed
            String userName = ListBox5.SelectedValue;
            string []roles=System.Web.Security.Roles.GetRolesForUser(userName);
            ListBox6.DataSource = roles;
            //ListBox6.DataTextField = "";
            //ListBox6.DataValueField = "CustomerId";
            ListBox6.DataBind();
        }
    }
}