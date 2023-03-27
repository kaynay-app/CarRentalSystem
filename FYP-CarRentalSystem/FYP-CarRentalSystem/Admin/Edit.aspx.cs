using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP_CarRentalSystem.Admin
{
    public partial class Edit : System.Web.UI.Page
    {
        Byte[] ImageByte = null;

        protected void Page_Load(object sender, EventArgs e)
        {

            int CarId = 0;
            int.TryParse(Request.QueryString["CarId"], out CarId);
            if (!IsPostBack)
            {
                if (!CarId.Equals(0))
                {
                    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))
                    {
                        SqlDataAdapter objAdpt = new SqlDataAdapter("select * from Cars where CarId= " + Request.QueryString["CarId"], conn);

                        DataSet objDS = new DataSet();
                        objAdpt.Fill(objDS, "Cars");

                        if (objDS.Tables[0].Rows.Count > 0)
                        {

                            txt_price.Text = objDS.Tables[0].Rows[0]["Price"].ToString();
                            txt_detail.Text = objDS.Tables[0].Rows[0]["Detail"].ToString();
                            if (objDS.Tables[0].Rows[0]["Popular"].ToString() == "yes")
                            {
                                cb_Popular.Checked = true;
                            }
                            else
                            {
                                cb_Popular.Checked = false;
                            }
                            if (objDS.Tables[0].Rows[0]["Available"].ToString() == "yes")
                            {
                                cb_Available.Checked = true;
                            }
                            else
                            {
                                cb_Available.Checked = false;
                            }
                            if (objDS.Tables[0].Rows[0]["Damage"].ToString() == "yes")
                            {
                                cb_Damage.Checked = true;
                            }
                            else
                            {
                                cb_Damage.Checked = false;
                            }

                            dd_brands.SelectedIndex = Convert.ToInt32(objDS.Tables[0].Rows[0]["BrandId"]) - 1;
                            dd_model.SelectedIndex = Convert.ToInt32(objDS.Tables[0].Rows[0]["ModelId"]) - 1;
                            dd_category.SelectedIndex = Convert.ToInt32(objDS.Tables[0].Rows[0]["CategoryId"]) - 1;
                            Image1.ImageUrl = "data:image/png;base64," + Convert.ToBase64String((byte[])(objDS.Tables[0].Rows[0]["Image"]));
                            Session["ImageFile"] = ((byte[])(objDS.Tables[0].Rows[0]["Image"]));
                            ImageByte = ((byte[])(objDS.Tables[0].Rows[0]["Image"]));
                        }

                    }

                }
                else
                {
                    error_para.InnerText = "Please Select a Car";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                    Response.Redirect("/Admin/ManageCars.aspx");
                }

            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {

                string popular = null;
                if (cb_Popular.Checked == true)
                {
                    popular = "yes";
                }
                else
                {
                    popular = "no";
                }

                string damage;
                if (cb_Damage.Checked == true)
                {
                    damage = "yes";
                }
                else
                {
                    damage = "no";
                }

                string available = null;
                if (cb_Available.Checked == true)
                {
                    available = "yes";
                }
                else
                {
                    available = "no";
                }

                string username = Context.User.Identity.Name;


                string command = "UPDATE [Cars] SET [Price] = @Price, [Detail] = @Detail, [Image] = @Image, [Popular] = @Popular, [Damage] = @Damage, [Available] = @Available, [ModelId] = @ModelId, [BrandId] = @BrandId, [CategoryId] = @CategoryId WHERE [CarId] = " + dd_carid.SelectedValue;

                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))

                    try
                    {
                        using (SqlCommand sql_insert_command = new SqlCommand(command, conn))
                        {
                            sql_insert_command.Parameters.AddWithValue("@Price", txt_price.Text.ToString());
                            sql_insert_command.Parameters.AddWithValue("@Detail", txt_detail.Text.ToString());

                            Byte[] imgByte = null;
                            FileUpload img = (FileUpload)upload_Image;
                            if (upload_Image.HasFile && img.PostedFile != null)
                            {
                                //image code
                                HttpPostedFile File = upload_Image.PostedFile;
                                imgByte = new Byte[File.ContentLength];
                                File.InputStream.Read(imgByte, 0, File.ContentLength);
                            }
                            else
                            {

                                imgByte = ((byte[])(Session["ImageFile"]));
                            }

                            sql_insert_command.Parameters.AddWithValue("@Image", imgByte);
                            sql_insert_command.Parameters.AddWithValue("@Popular", popular);
                            sql_insert_command.Parameters.AddWithValue("@Damage", damage);
                            sql_insert_command.Parameters.AddWithValue("@Available", available);
                            sql_insert_command.Parameters.AddWithValue("@Modelid", dd_model.SelectedValue);
                            sql_insert_command.Parameters.AddWithValue("@Brandid", dd_brands.SelectedValue);
                            sql_insert_command.Parameters.AddWithValue("@Categoryid", dd_category.SelectedValue);

                            conn.Open();
                            int result = sql_insert_command.ExecuteNonQuery();
                            conn.Close();

                            error_para.InnerText = "Car updated successfully";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);

                        }

                    }
                    catch (SqlException ex)// yeh exceptionn hoti k agr try block ma likha hoa hai code hai us ma koi error ata yeh run ho. yeani yeah jo catch block ma likha hoa code sirf tb e run hota hai jab try block k code ma koi error aye.
                    {

                        error_para.InnerText = ex.Message;
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);

                    }
            }



        }

    }
}