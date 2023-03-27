using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem.Admin
{
    public partial class ManageRoles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_addRole_Click(object sender, EventArgs e)
        {
            System.Web.Security.Roles.CreateRole(TextBox1.Text);
            Label1.Text = "Role Added Successfully";
            //Roles.AddUsersToRole((new string[] { TextBoxUsername.Text }, new string[] { DropDownListRole.SelectedItem.Value });
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(ListBox1.SelectedValue);
            Response.Write(ListBox2.SelectedValue);

            System.Web.Security.Roles.AddUsersToRoles(new string[] { ListBox1.SelectedValue }, new string[] { ListBox2.SelectedValue });
            Label1.Text = "User added to role successfully.";
        }
    }
}