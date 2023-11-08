using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm5 : System.Web.UI.Page
    {
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
               Console.WriteLine(ex.Message);
            }
        }
        public void logout()
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

    }
}