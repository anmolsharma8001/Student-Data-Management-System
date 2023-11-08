using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Xml.Linq;
using System.Web.Services.Description;

namespace WebApplication3
{
    public partial class WebForm3 : System.Web.UI.Page
    {
       
   
        public void getdata()
        { string snam = TextBox2.Text.ToString();
            String Cnam = DropDownList1.SelectedValue;
            String admisionyr= DropDownList2.SelectedValue;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
            string findqry="select CLG_ID,STU_NAME,STU_FNAME,SU_MNAME,DOB,COURSE,TOTAL_FEE,DEPOSIT_FEE from Students_data WHERE STU_NAME='"+snam+ "' and COURSE='"+Cnam+ "' and ADDMISSION_YEAR='"+admisionyr+"'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(findqry, conn);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            conn.Close();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        public void getintext()
        {   string UNAME=TextBox1.Text;
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Students_data WHERE CLG_ID='"+UNAME+"'"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = conn;
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            TextBox3.Text = sdr["STU_NAME"].ToString();
                            TextBox4.Text = sdr["STU_FNAME"].ToString();
                            TextBox5.Text = sdr["SU_MNAME"].ToString();
                            TextBox16.Text = sdr["DOB"].ToString();
                            TextBox20.Text = sdr["GENDER"].ToString();
                            TextBox6.Text = sdr["ADDMISSION_YEAR"].ToString();
                            TextBox19.Text = sdr["COURSE"].ToString();
                            TextBox7.Text = sdr["ADHAR"].ToString();
                            TextBox8.Text = sdr["MOBILE_NO"].ToString();
                            TextBox9.Text = sdr["EMAIL"].ToString();
                            TextBox10.Text = sdr["CURRENT_ADDRESS"].ToString();
                            TextBox12.Text = sdr["COURSE_FEE"].ToString();
                            TextBox14.Text = sdr["TOTAL_FEE"].ToString();
                            TextBox17.Text = sdr["USERNAME"].ToString();
                            TextBox18.Text = sdr["PASSWORD"].ToString();
                            if (Session["Degaccess"].ToString()== "Cashier/Accountant" || Session["Degaccess"].ToString() == "Administrator")
                            {
                                TextBox15.Enabled = true;
                                Button2.Enabled = true;
                            }
                        }
                        else
                        {
                            Label2.Visible= true;
                            Label2.Text = "NotFound";
                           
                        }
                    }
                    conn.Close();
                }
            }
        
    } 
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["uid"] == null)
                {

                   Response.Redirect("Login.aspx");
                }
                else
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
                }


            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {   if (TextBox1.Text!="")
            {
                getintext();
                
            }
            else if (TextBox2.Text != "")
            {
                getdata();

            }
            else
            {
                
                Label2.Visible = true;
                Label2.Text = "Please enter valid";
               // Response.Write("<script>alert('Please enter valid ');</script>");
            }
        }

        
        

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            TextBox1.Text = "";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            TextBox2.Text =string.Empty;
            DropDownList1.SelectedIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if ((TextBox15.Text != "") && (Button2.Enabled==true))
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
                conn.Open();
                string insertQuery = "update Students_data Set DEPOSIT_FEE=@deposit,TOTAL_FEE= @remainfee";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@deposit", Int32.Parse(TextBox15.Text));
                cmd.Parameters.AddWithValue("@remainfee", Int32.Parse(TextBox14.Text) - Int32.Parse(TextBox15.Text));
                cmd.ExecuteNonQuery();
                conn.Close();
                getintext();
                Label2.Visible = true;
                Label2.ForeColor = System.Drawing.Color.Green;
                Label2.Text = "Successfull deposit";
                TextBox15.Text = "";
                Button2.Enabled = false;
            }
            else
            {
                Label2.Text = "Input fees";
                Label2.Visible= true;
            }

        }
    }
}