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
    public partial class NewCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            erorlabel.Visible = false;
        }
        protected void btn_Create_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // yaha ham popular ki value set kr rhy hain. agr check box checked hoga mean selected hoga tu value yes insert karengy database ma.
                string popular = null;
                if (cb_IsPopular.Checked == true)//cb_IsPopular yeah us checkbox ka name hai.
                {
                    popular = "yes";
                }
                else
                {
                    popular = "no";
                }

                string damage;// yeh b same uper wale ki trnauh h null ku h? null ka mtlb hota hai no value mtlb koi v value ni . jab ham kisi variable ko declare karte tu ham uski default yani initial value b sert karte hain. shaid apne parha ho yeh tu. esko aisy b likh sakte. 
                if (cb_IsDamage.Checked == true)
                {
                    damage = "yes";// ab eska mtlb hai uper hai declare ni kia variable ki value ko. // nul sy koi farq ni parhta. ?? smj ai
                }
                else
                {
                    damage = "no";
                }
                //if else ka tu pta e hai na g?
                string available = null;
                if (cb_IsAvailable.Checked == true)
                {
                    available = "yes";
                }
                else
                {
                    available = "no";
                }

                string username = Context.User.Identity.Name;

                //create button py double click kia tu yeh create hogya 
                // sab sy pahly ham database sy connection karengy ta k ham value ko instert kr saken.

                //ab ham ne banani hai insert ki query database sy. dakhi thi insert ki query?g
                string command = "insert into Cars(Price,Detail,Image,Popular,Damage,Available,ModelId,BrandId,CategoryId,UserName)";
                command = command + "values(@carprice,@cardetail,@image,@popular,@damage,@available,@modelid,@brandid,@categoryid,@username)";
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarRentalManagementDBConnectionString"].ConnectionString))

                    try
                    {
                        using (SqlCommand sql_insert_command = new SqlCommand(command, conn))
                        {// sqlcommand ma query pass karte hain sath ma connection.
                            sql_insert_command.Parameters.AddWithValue("@carprice", txt_carPrice.Text.ToString());// yeh parameter hte hain. jo database ki query ma pass kr rhy hain. txt_carPrice.Text.ToString() yeh wala ham direct b likh sakte hain. parameteres ham tab use karte hain jab values ziada hn ta k koi ghalati na ho aur asani b ho. kisi chez ko correct karne aur change karne ma.
                            sql_insert_command.Parameters.AddWithValue("@cardetail", txt_carDetail.Text.ToString());
                            //image code
                            FileUpload img = (FileUpload)upload_Image;// yeh file ko upload krwane k liye hai. 
                            Byte[] imgByte = null;// imag ko ham byte data ma convert es liye karte hain ta k ham usko database ma save kr saken. aik tariqa yeh b hota hai k ham pics ko aik folder ma save krwa lain project k aur phir database ma sirf uska address save karewean. address mtlb fldere directory.
                            if (img.HasFile && img.PostedFile != null) // yaha ham check kr rhy k agr pic upload hoi ho tu next code process kary
                            {
                                //To create a PostedFile
                                HttpPostedFile File = upload_Image.PostedFile;// jab koi chez web py upload karwai jati to wo post sy karwai jati hai. yaha ham file ko save krwa rhy hain.
                                //Create byte Array with file len
                                imgByte = new Byte[File.ContentLength];// file ko byte ma covert krwa rhy hainn yaha. jo imgbyte ma save ho rha hai.
                                //force the control to load data in array
                                File.InputStream.Read(imgByte, 0, File.ContentLength);// yeah image ki bytes ko read kr rhya. 
                            }
                            sql_insert_command.Parameters.AddWithValue("@image", imgByte);// imgByte = new Byte[File.ContentLength]; yeh byts save ho rhy they imgbyte ma tu wo ham database ma save karengy.
                            sql_insert_command.Parameters.AddWithValue("@popular", popular);//popular wo value jo ham uper set kr rhy yes aur no un ma sy aik save hogi database ma. 
                            sql_insert_command.Parameters.AddWithValue("@damage", damage);
                            sql_insert_command.Parameters.AddWithValue("@available", available);
                            sql_insert_command.Parameters.AddWithValue("@modelid", dd_carModel.SelectedValue); // jab drop down ma koi b item yani model select hogya tu .selected value sy ham uski Id get kr sakte hain jo ham ne car k table ma insert karwani hai.
                            sql_insert_command.Parameters.AddWithValue("@brandid", dd_carBrand.SelectedValue);
                            sql_insert_command.Parameters.AddWithValue("@categoryid", dd_carCategory.SelectedValue);
                            sql_insert_command.Parameters.AddWithValue("@username", username);
                            conn.Open();// yeh connection open kr rhy
                            int result = sql_insert_command.ExecuteNonQuery();//y kia h? yeh query ko run krne k liye hai.execute non query? jab ham ne data insert krna hao ya delete krna hoa ya update krna ho tu yeh use karte hain. sa
                            conn.Close();// yeh close kr rhy.
                            
                            error_para.InnerText = "Car added successfully";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);
                            //erorlabel.Visible = true;// yeh jab query run ho jayegi yeh ham eror label ko show krwa rhy. 
                            //erorlabel.Text = "Data inserted successfully!";
                            //if (result < 0)// agr query galat ho tu yeh apear ho jayega.
                            //    erorlabel.Visible = true;
                            //erorlabel.Text = "Error inserting data into Database!";
                        }

                    }
                    catch (SqlException ex)// yeh exceptionn hoti k agr try block ma likha hoa hai code hai us ma koi error ata yeh run ho. yeani yeah jo catch block ma likha hoa code sirf tb e run hota hai jab try block k code ma koi error aye.
                    {
                         
                            error_para.InnerText =ex.Message;
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "anykey", "myFunction();", true);

                    }
            }
            

        }
    }
}