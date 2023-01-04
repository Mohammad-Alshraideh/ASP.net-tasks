using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jan_02.Vote
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
   
      
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command1 = new SqlCommand("select ex + verygood + good + poor + sat  from vote", connection);

            connection.Open();
            string total = command1.ExecuteScalar().ToString();
            Label1.Text= $"اجمالي عدد المصوتين: {total}";
            connection.Close();
            if (Request.Cookies["voted"] != null)
            {
                radio.Visible= false;
            }
            else
            {
                chart.Visible= false;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand cm1 = new SqlCommand($"select {RadioButtonList1.SelectedValue} from vote", connection);
            int val =Convert.ToInt32( cm1.ExecuteScalar());
 
            connection.Close();
          
            SqlCommand cm = new SqlCommand($"update vote set {RadioButtonList1.SelectedValue} = {val+1}" , connection);
            connection.Open();
            cm.ExecuteNonQuery();
            connection.Close();
            Response.Cookies["voted"].Value = "true";

            connection.Open();
            SqlCommand command1 = new SqlCommand("select ex + verygood + good + poor + sat  from vote", connection);

            string total = command1.ExecuteScalar().ToString();
            Label1.Text = $"اجمالي عدد المصوتين: {total}";
            connection.Close();
            Response.Redirect("vote.aspx");
           
        }


        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}