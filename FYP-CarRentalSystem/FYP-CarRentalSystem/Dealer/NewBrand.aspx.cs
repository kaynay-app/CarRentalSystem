using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem.Userforms
{
    public partial class NewBrand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ErrorLabel.Visible = false;
        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {

            string command = "insert into Brands(CarBrand) values (@brand)";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))

                try
                {
                    using (SqlCommand sql_insert_command = new SqlCommand(command, conn))
                    {
                        sql_insert_command.Parameters.AddWithValue("@brand", txt_brand.Text.ToString());
                        conn.Open();
                        int result = sql_insert_command.ExecuteNonQuery();
                        ErrorLabel.Visible = true;// yeh jab query run ho jayegi yeh ham eror label ko show krwa rhy. 
                        ErrorLabel.Text = "Data inserted successfully!";
                        conn.Close();// yeh close kr rhy.



                        //if (result < 0)// agr query galat ho tu yeh apear ho jayega.
                        //erorlabel.Visible = true;
                        //erorlabel.Text = "Error inserting data into Database!";
                    }

                }
                catch (Exception ex)
                {
                    ErrorLabel.Visible = true;
                    ErrorLabel.Text = ex.ToString();

                }
        }
    }
}