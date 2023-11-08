using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != string.Empty && TextBox2.Text != string.Empty)
            {
                try
                {

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
                    conn.Open();
                    string uid = TextBox1.Text;
                    string pass = TextBox2.Text;
                    Label1.Visible = false;
                    string loginQuery = "select * from Admin_data where admin_user='" + uid + "' and admin_pass='" + pass + "'";
                    SqlCommand cmd = new SqlCommand(loginQuery, conn);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {

                        Session["uid"] = sdr["admin_srno"].ToString();
                        Session["Degaccess"] = sdr["admin_deg"].ToString();
                        Session["uname"] = sdr["admin_name"].ToString();
                        Response.Redirect("Admin_Dashboard.aspx");

                    }
                    else
                    {
                        Label1.Visible = true;
                        Label1.Text = "Invalid Username and Password!";
                    }
                    conn.Close();
                } 
                catch
                {
                Label1.Text = "Error occured";
                }
             }
            else
            {

                Label1.Visible = true;
                Label1.Text = "Input Username & password!";
            }
        
                

                /* if ((DropDownList1.SelectedIndex == 0))
                 {
                     Label1.Text = "Please Select user type!";
                     Label1.Visible = true;

                      else if (DropDownList1.SelectedIndex == 1)
                          {
                              loginQuery = "select * from Students_data where USERNAME='" + uid + "' and PASSWORD='" + pass + "'";
                               cmd = new SqlCommand(loginQuery, conn);
                               sdr = cmd.ExecuteReader();
                              if (sdr.Read())
                              {
                                  if (DropDownList1.SelectedIndex == 1)
                                  {
                                      Response.Redirect("Stu_Dashboard.aspx");
                                  }
                                  else if (DropDownList1.SelectedIndex == 0)
                                  {
                                      Label1.Text = "Please Select user type!";
                                 }
                                  else
                                  {
                                      Label1.Text = "Please Select valid User!";
                                  }
                              }
                      }
                     }
                 else if ((TextBox1.Text == "") || (TextBox2.Text == ""))
                 {
                     Label1.Visible = true;
                     Label1.Text = "Please enter username and Password!";
                 }
                 else if(DropDownList1.SelectedIndex == 2)
                 {
                     Label1.Visible = false;
                     string loginQuery = "select * from Admin_data where admin_user='" + uid + "' and admin_pass='" + pass + "'";
                     SqlCommand cmd = new SqlCommand(loginQuery, conn);
                     SqlDataReader sdr = cmd.ExecuteReader();
                     if (sdr.Read())
                     {                      

                             Session["uid"] = sdr["admin_srno"].ToString();
                             Session["Degaccess"] = sdr["admin_deg"].ToString();
                             Session["uname"] = sdr["admin_name"].ToString();
                             Response.Redirect("Admin_Dashboard.aspx");

                     }
                     else
                     {
                         Label1.Visible = true;
                         Label1.Text = "Not matched";
                     }
                     conn.Close();

                 }
                 else
                 {
                     Label1.Visible = true;
                     Label1.Text = "Please Select valid User type";
                 }*/
           
        }

    }
}
