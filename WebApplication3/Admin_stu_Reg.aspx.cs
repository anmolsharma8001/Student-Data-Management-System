using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Reflection.Emit;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["uid"] == null)
                {

                    Response.Redirect("Login.aspx");
                }


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                if ((TextBox1.Text == "") || (TextBox2.Text == "") || (TextBox4.Text == "") || (TextBox3.Text == "") || (DropDownList5.SelectedIndex == 0) || (TextBox5.Text == "") || (TextBox6.Text == "") || (TextBox7.Text == "") || (TextBox8.Text == "") || (TextBox9.Text == "") || (TextBox10.Text == "") || (TextBox11.Text == "") || (TextBox12.Text == "") || (TextBox13.Text == "") || (TextBox14.Text == "") || (TextBox15.Text == "") || (TextBox16.Text == "") || (DropDownList1.Text == "Select") || (DropDownList2.Text == "Select"))
                {
                    Label21.Visible = true;
                    Label21.Text = "Please fill all required feild";
                    // Response.Write("<script>alert('Error');</script>");
                }
                else
                {

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
                    conn.Open();
                    string insertQuery = "insert into Students_data(STU_NAME,STU_FNAME,SU_MNAME,DOB,prev_clg,GENDER,ADDMISSION_YEAR,COURSE,ADHAR,MOBILE_NO,EMAIL,CURRENT_ADDRESS,PARMANENT_ADRESS,COURSE_FEE,REG_FEE,TOTAL_FEE,DEPOSIT_FEE,USERNAME,PASSWORD)values (@studentname,@fname,@mname,@dob,@prclg,@gender,@addyear,@course,@adhar,@mobile_no,@email,@curraddress,@paraddress,@coursefee,@regfees,@totalfees,@deposit,@user,@pass)";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@studentname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@fname", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@mname", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@dob", TextBox16.Text);
                    cmd.Parameters.AddWithValue("@gender", DropDownList1.Text);
                    cmd.Parameters.AddWithValue("@addyear", DropDownList5.Text);
                    cmd.Parameters.AddWithValue("@course", DropDownList2.Text);
                    cmd.Parameters.AddWithValue("@adhar", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@mobile_no", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@email", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@curraddress", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@paraddress", TextBox6.Text);
                   // cmd.Parameters.AddWithValue("@district", DropDownList3.Text);
                    //cmd.Parameters.AddWithValue("@state", DropDownList4.Text);
                    cmd.Parameters.AddWithValue("@coursefee", TextBox12.Text);
                    cmd.Parameters.AddWithValue("@regfees", TextBox13.Text);
                    cmd.Parameters.AddWithValue("@totalfees", TextBox14.Text);
                    cmd.Parameters.AddWithValue("@deposit", TextBox15.Text);
                    cmd.Parameters.AddWithValue("@user", TextBox10.Text);
                    cmd.Parameters.AddWithValue("@Pass", TextBox11.Text);

                    cmd.Parameters.AddWithValue("@prclg", TextBox4.Text);

                    cmd.ExecuteNonQuery();
                    conn.Close();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    DropDownList5.SelectedIndex = 0;
                    TextBox5.Text = "";
                    TextBox4.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    TextBox12.Text = "";
                    TextBox13.Text = "";
                    TextBox14.Text = "";
                    TextBox15.Text = "";
                    TextBox16.Text = "";
                    DropDownList1.SelectedIndex = 0;
                    DropDownList2.SelectedIndex = 0;
                    DropDownList3.SelectedIndex = 0;
                    DropDownList4.SelectedIndex = 0;
                    // Response.Write("<script>alert('Data inserted successfully')</script>");
                    Label21.Visible = true;
                    Label21.Text = "Successfull saved!";
                    Label21.ForeColor = System.Drawing.Color.Green;


                }

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void TextBox13_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            TextBox6.Text = TextBox5.Text.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(TextBox12.Text!=string.Empty && TextBox13.Text!=string.Empty)
            {
                TextBox14.Text = (int.Parse(TextBox12.Text) + int.Parse(TextBox13.Text)).ToString();
            }
        }
    }
}