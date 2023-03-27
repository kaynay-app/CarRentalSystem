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
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            Calendar1.Visible = false;
            Calendar2.Visible = false;
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string command = "insert into Bookings(StartTime, EndTime, CNICimg, Place, Charges, CarID,UserName)";
                command = command + "values(@starttime,@endtime,@cnicimg,@place,@charges,@carid,@username)";
                string updatecommand = "update Cars set Available='no' where CarId=" + Request.QueryString["CarId"];
                string user = Context.User.Identity.Name;

                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))
                {
                    try
                    {
                        SqlCommand updCommand = new SqlCommand(updatecommand, conn);
                        using (SqlCommand sql_insert_command = new SqlCommand(command, conn))
                        {
                            sql_insert_command.Parameters.AddWithValue("@starttime", txt_startDate.Text);
                            sql_insert_command.Parameters.AddWithValue("@endtime", txt_endDate.Text);
                            //image code
                            FileUpload img = (FileUpload)upload_Image;
                            Byte[] imgByte = null;
                            if (img.HasFile && img.PostedFile != null)
                            {
                                //To create a PostedFile
                                HttpPostedFile File = upload_Image.PostedFile;
                                //Create byte Array with file len
                                imgByte = new Byte[File.ContentLength];
                                //force the control to load data in array
                                File.InputStream.Read(imgByte, 0, File.ContentLength);
                            }
                            sql_insert_command.Parameters.AddWithValue("@cnicimg", imgByte);
                            sql_insert_command.Parameters.AddWithValue("@place", dd_Place.SelectedValue);
                            sql_insert_command.Parameters.AddWithValue("@charges", txt_charges.Text);
                            sql_insert_command.Parameters.AddWithValue("@carid", dd_CarId.SelectedValue);
                            sql_insert_command.Parameters.AddWithValue("@username", user);
                            conn.Open();
                            int result = sql_insert_command.ExecuteNonQuery();
                            int result2 = updCommand.ExecuteNonQuery();
                            conn.Close();

                            


                            //erorlabel.Visible = true;
                            //erorlabel.Text = "Data inserted successfully!";
                            error_para.InnerText = "Car Booked successfully";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                            //modal_para.InnerText = "Car Booked Successfully";
                            //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);

                            //if (result < 0)// agr query galat ho tu yeh apear ho jayega.
                            //    erorlabel.Visible = true;
                            //erorlabel.Text = "Error inserting data into Database!";
                        }
                    }
                    catch (SqlException ex)
                    {

                        //erorlabel.Visible = true;
                        //erorlabel.Text = "Error" + ex.Message;
                        error_para.InnerText = ex.Message;
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                        
                    }
                }
            }
            //string startTime = txt_startDate.ToString();//2017-08-0614:03
            //string endTime = txt_endDate.ToString();//2018-04-0510:57

            //DateTime str = DateTime.ParseExact(txt_startDate.Text,"");
            //DateTime end = Convert.ToDateTime(endTime);

            


        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txt_startDate.Text = (Calendar1.SelectedDate.ToShortDateString() + " " + txt_strTime.Text + " " + ddStrTime.SelectedItem).ToString();
            Calendar1.Visible = false;
        }

        protected void btnStartDate_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txt_endDate.Text = (Calendar2.SelectedDate.ToShortDateString() + " " + txt_endTime.Text + " " + ddEndTime.SelectedItem.ToString());
            Calendar2.Visible = false;
        }

        protected void btnEndDate_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Now;
            double carPrice = Convert.ToDouble(dd_Price.SelectedValue);
            DateTime strTime =Convert.ToDateTime(txt_startDate.Text);
            DateTime endTime = Convert.ToDateTime(txt_endDate.Text);

            TimeSpan time = TimeSpan.Zero;
            if (strTime < today)
            {
               error_para.InnerText = "Start Time should be greater than today";
               ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                
            }
            else if (strTime > endTime)
            {
                error_para.InnerText = "Start Time should not greater than End Time";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                
            }
            else
            {
                time = endTime - strTime;
            }
            
            double totalHours = time.TotalHours;
            double totalAmount = carPrice * totalHours;

            txt_totalTime.Text = totalHours.ToString();
            txt_charges.Text = string.Format("{0:c}", totalAmount);
            
            
            //int days = 0;
            //int hours=0;
            //TimeSpan ts = endTime - strTime;
            //hours = ts.Hours; 
            //days = ts.Days;
            
            //    double totalcharges = carPrice * hours;
            //    txt_charges.Text =string.Format("{0:c}", totalcharges);
            //    txt_totalTime.Text = days.ToString() + " days " + hours + " hours ";
            
           
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime pastday = e.Day.Date;
            DateTime date = DateTime.Now;
            int year = date.Year;
            int month = date.Month;
            int day = date.Day;
            DateTime today = new DateTime(year, month, day);
            if (pastday.CompareTo(today) < 0)
            {
                e.Cell.BackColor = System.Drawing.Color.Gray;
                e.Day.IsSelectable = false;
            }
        }

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime pastday = e.Day.Date;
            DateTime date = DateTime.Now;
            int year = date.Year;
            int month = date.Month;
            int day = date.Day;
            DateTime today = new DateTime(year, month, day);
            if (pastday.CompareTo(today) < 0)
            {
                e.Cell.BackColor = System.Drawing.Color.Gray;
                e.Day.IsSelectable = false;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }
    }
}