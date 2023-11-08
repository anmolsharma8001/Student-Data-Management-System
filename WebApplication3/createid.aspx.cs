using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Description;

namespace WebApplication3
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Button2.Enabled = false;
            Label1.Visible = false;
            Label2.Visible = false;
            string temp = "Administrator";
            try
            {
                if (Session["Degaccess"].ToString() != temp.ToString())
                {
                    Button2.Enabled = true;
                    Button4.Visible = false;
                    Button6.Visible = false;
                    Button7.Visible = false;
                    TextBox12.Text = Session["uid"].ToString();
                    TextBox12.Enabled = false;
                    Panel3.Visible =false;
                    GridView1.Visible = false;

                    search(int.Parse(Session["uid"].ToString()));

                }
                if (Session["uid"] == null)
                {

                    Response.Redirect("Login.aspx");
                    

                }
                
                Button3.Enabled = false;


            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }


        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel1.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            Panel1.Visible = true;
           
        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox8.Text == "")
                {
                    Label1.Visible = true;
                    Label1.Text = "Enter valid input Update password";
                }
                else
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
                    conn.Open();
                    string insertQuery = "update Admin_data Set admin_pass=@admin_pass where admin_srno='" + TextBox12.Text + "'";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@admin_pass", (TextBox8.Text));
                    cmd.ExecuteNonQuery();
                    conn.Close();


                    Label1.Visible = true;
                    Label1.Text = "Succssfull Updated";

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox8.Text != null)
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
                    conn.Open();
                    string insertQuery = "delete Admin_data where admin_srno=@admin_srno";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@admin_srno", (TextBox12.Text));
                    cmd.ExecuteNonQuery();
                    conn.Close();


                    TextBox5.Text = "";
                    TextBox11.Text = "";
                    TextBox10.Text = "";
                    TextBox9.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    GridView1.DataBind();
                    Label1.Visible = true;
                    Label1.Text = "Succssfull Deleted!";
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((TextBox1.Text == null) || (TextBox2.Text == null) || (TextBox3.Text == null) || (TextBox4.Text == null) || (DropDownList1.SelectedIndex == 0) || (DropDownList2.SelectedIndex == 0) || (DropDownList3.SelectedIndex == 0))
            {
                Label2.Visible = true;
                Label2.Text = "Fill required Information";

            }
            else
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Admin_data(admin_name,gender,admin_dep,admin_deg,admin_mobile,admin_user,admin_pass)values (@admin_name,@gender,@admin_dep,@admin_deg,@admin_mobile,@admin_user,@admin_pass)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@admin_name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@gender", DropDownList3.Text);
                cmd.Parameters.AddWithValue("@admin_dep", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@admin_deg", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@admin_mobile", TextBox4.Text);
                cmd.Parameters.AddWithValue("@admin_user", TextBox2.Text);
                cmd.Parameters.AddWithValue("@admin_pass", TextBox3.Text);
                cmd.ExecuteNonQuery();
                conn.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                DropDownList1.SelectedIndex = 0;
                DropDownList2.SelectedIndex = 0;
                DropDownList3.SelectedIndex = 0;
                Label2.Visible = true;
                Label2.Text = "Seccesfully created";
                Label2.ForeColor = System.Drawing.Color.Green;
                GridView1.DataBind();
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {

            int adminid = int.Parse(TextBox12.Text);
            search(adminid);


        }
        public void search(int id)
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Admin_data WHERE admin_srno='" + id + "'"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = conn;
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            TextBox5.Text = sdr["admin_name"].ToString();
                            TextBox11.Text = sdr["gender"].ToString();
                            TextBox10.Text = sdr["admin_deg"].ToString();
                            TextBox9.Text = sdr["admin_dep"].ToString();
                            TextBox6.Text = sdr["admin_mobile"].ToString();
                            TextBox7.Text = sdr["admin_user"].ToString();
                            //TextBox8.Text = sdr["admin_pass"].ToString();
                            Button3.Enabled = true;
                            Button2.Enabled = true;

                        }
                        else
                        {
                            TextBox5.Text = "";
                            TextBox11.Text = "";
                            TextBox10.Text = "";
                            TextBox9.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                            TextBox8.Text = "";
                            Button3.Enabled = false;
                            Button2.Enabled = false;
                            Label1.Visible = true;
                            Label1.Text = "Not Found";

                        }
                    }
                    conn.Close();
                }
            }
        }
    }
}