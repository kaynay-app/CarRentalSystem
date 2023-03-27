using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem.Accountant
{
    public partial class UserDetailOfCarRent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=Invoice.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";

            StringWriter sw = new StringWriter();

            HtmlTextWriter htw = new HtmlTextWriter(sw);

            GridView1.HeaderRow.Style.Add("background-color", "#ffffff");

            foreach (TableCell tableCell in GridView1.HeaderRow.Cells)
            {
                tableCell.Style["background-color"] = "#ffffff";
            }

            foreach (GridViewRow gridviewrow in GridView1.Rows)
            {
                gridviewrow.BackColor = System.Drawing.Color.White;
                foreach (TableCell gridviewrowtablecell in gridviewrow.Cells)
                {
                    gridviewrowtablecell.Style["background-color"] = "#ffffff";
                }
            }

            GridView1.RenderControl(htw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
    }
}