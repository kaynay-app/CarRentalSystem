using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem.Accountant
{
    public partial class ReturnCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_returnTime.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string command = "update Bookings set [ReturnedDate]=@date, [PaidAmount]=@amount, [SecretCode]=@code Where [CarId]=@carId and [ReturnedDate] IS NULL and [UserName] = " + "'" + dd_Users.SelectedValue.ToString() + "'";
            string updateAvai = "update Cars set [Available]= "+" 'yes' "+" Where [CarId]= " + dd_cars.SelectedValue;
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))
            {
                //double rentalAmount = double.Parse(txt_amounttorecover.Text);

                try
                {
                    SqlCommand cmd = new SqlCommand(command, conn);
                    SqlCommand cmdavai = new SqlCommand(updateAvai, conn);
                    double totalAmount = double.Parse(txt_amounttorecover.Text, NumberStyles.Currency) + Convert.ToDouble(txt_amountofdamage.Text);
                    cmd.Parameters.AddWithValue("@date", txt_returnTime.Text);
                    cmd.Parameters.AddWithValue("@amount", totalAmount.ToString());
                    cmd.Parameters.AddWithValue("@code", secretCode.Text);
                    cmd.Parameters.AddWithValue("@carId", dd_cars.SelectedValue);
                    conn.Open();
                    int result = cmd.ExecuteNonQuery();
                    int result1 = cmdavai.ExecuteNonQuery();
                    conn.Close();
                    error_para.InnerText = "Car returned successfully";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                    Label1.Visible = true;
                    Label1.Text = "Secret Code is "+ secretCode.Text;
                }
                catch (SqlException ex)
                {
                    error_para.InnerText = "Error: "+ex.Message;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                    
                }


            }
            if (chkbox_damage.Checked)
            {
                string command2 = "update Cars set [Damage]=yes, [Remarks]=@remarks Where [CarId]=@carId";
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand(command2, conn);


                        cmd.Parameters.AddWithValue("@remarks", txt_damagecoment.Text.ToString());
                        cmd.Parameters.AddWithValue("CarId", Request.QueryString["CarId"]);
                        conn.Open();
                        int result = cmd.ExecuteNonQuery();
                        conn.Close();

                    }
                    catch (SqlException ex)
                    {
                        Label1.Visible = true;
                        Label1.Text = ex.Message;
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TimeSpan time = TimeSpan.Zero;
            DateTime startTime = Convert.ToDateTime(dd_startTime.SelectedValue);
            DateTime endTime = Convert.ToDateTime(txt_returnTime.Text);

            time = endTime - startTime;
            double totalHours = time.TotalHours;
            double totalAmount =double.Parse(dd_carPrice.SelectedValue,NumberStyles.Currency) * totalHours;
            txt_amounttorecover.Text = string.Format("{0:c}", totalAmount);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
            string numbers = "1234567890";

            string characters=null;
            
             characters += alphabets + small_alphabets + numbers;
            
            int length = 7;
            string otp = string.Empty;
            for (int i = 0; i < length; i++)
            {
                string character = string.Empty;
                do
                {
                    int index = new Random().Next(0, characters.Length);
                    character = characters.ToCharArray()[index].ToString();
                } while (otp.IndexOf(character) != -1);
                otp += character;
            }
            
            secretCode.Text = otp;
        }
    }
}