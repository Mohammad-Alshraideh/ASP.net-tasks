using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = DateTime.Now.ToString();
                if (Request.Cookies["Color"] != null)
                {
                    DropDownList1.SelectedValue = $"{Request.Cookies["Color"]["selectedCol"]}";

                }
            }

            if (Request.Cookies["Color"] != null)
            {
                Label1.Attributes.Add("style", $"color:{Request.Cookies["Color"]["selectedCol"]}");
            }

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Attributes.Add("style", $"color:{DropDownList1.SelectedValue}");
            Response.Cookies["Color"]["selectedCol"] = $"{DropDownList1.SelectedValue}";
            Response.Cookies["Color"].Expires = DateTime.Now.AddDays(1);
        }
    }
}