using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem.Dealer
{
    public partial class Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                if (!string.IsNullOrWhiteSpace(Request.QueryString["CarId"]))
                {
                    int CarId = 0;
                    int.TryParse(Request.QueryString["CarId"], out CarId);
                    if (!CarId.Equals(0))
                    {
                        //Response.Write(CarId.ToString());
                    }
                }
            } 

        }
    }
}