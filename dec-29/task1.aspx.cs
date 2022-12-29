using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["usernameAndPassword"] != null)
                {
                    HttpCookie cookiess = Request.Cookies["usernameAndPassword"];
                    TextBox1.Text = cookiess["username"].ToString();
                    Password.Attributes.Add("value", $"{cookiess["password"]}");
                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
       

            if (CheckBox1.Checked)
            {
                HttpCookie cookie = new HttpCookie("usernameAndPassword");
                cookie.Values.Add("username", TextBox1.Text);
                cookie.Values.Add("password", Password.Text);
                cookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(cookie);
                Response.Redirect("task1.aspx");
            }
        
        }
    }
}