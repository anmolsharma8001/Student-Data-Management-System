using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
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
                    Label1.Text = "Welcome! "+Session["uname"].ToString();
                }
                    
            }
            catch(Exception ex)
            { 
                Console.WriteLine(ex.ToString());
            }
        }
        public void logout()
        {
            //Response.Write("<script LANGUAGE='JavaScript' >alert('Logout Successfully..!')</script>");
            if (Session["uname"] != null)
            {
                
                Session.Abandon();
                Response.Redirect("Login.aspx");             
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            logout();
        }
    }
}