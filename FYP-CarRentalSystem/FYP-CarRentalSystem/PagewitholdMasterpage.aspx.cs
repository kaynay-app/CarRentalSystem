using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ListView1.SelectedIndex >= 0)
            {
                ViewState["DataKeyNames"] = ListView1.SelectedValue;
            }
            else
            {
                ViewState["DataKeyNames"] = null;
            }

            //if (ListView1.SelectedItems.Count == 1)
            //{
            //    int customerId = int.Parse(lstCustomers.SelectedItems[0].Text);
            //    // fetch data for that customer
            //}


        }
    }
}