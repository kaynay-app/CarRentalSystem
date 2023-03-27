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
    public partial class NewCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            erorlabel.Visible = false;

        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {
            string command = "insert into Categories(CarCategory) values (@category)";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))

                try
                {
                    using (SqlCommand sql_insert_command = new SqlCommand(command, conn))
                    {
                        sql_insert_command.Parameters.AddWithValue("@category", txt_category.Text.ToString());
                        conn.Open();
                        int result = sql_insert_command.ExecuteNonQuery();
                        erorlabel.Visible = true;// yeh jab query run ho jayegi yeh ham eror label ko show krwa rhy. 
                        erorlabel.Text = "Data inserted successfully!";
                        conn.Close();// yeh close kr rhy.



                        //if (result < 0)// agr query galat ho tu yeh apear ho jayega.
                        //erorlabel.Visible = true;
                        //erorlabel.Text = "Error inserting data into Database!";
                    }

                }
                catch (Exception ex)// yeh exceptionn hoti k agr try block ma likha hoa hai code hai us ma koi error ata yeh run ho. yeani yeah jo catch block ma likha hoa code sirf tb e run hota hai jab try block k code ma koi error aye.
                {
                    erorlabel.Visible = true;
                    erorlabel.Text = ex.ToString();

                }

        }
    }
}