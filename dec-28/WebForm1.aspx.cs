using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dec_28
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection CONN = new SqlConnection("data source= DESKTOP-TR88135;database=LIBRARYBOOKS;Integrated security=SSPI");

        protected void Page_Load(object sender, EventArgs e)
        {
            CONN.Open();
            SqlCommand cm = new SqlCommand($"  select First_name , user_PICTURE, product_id ,comment , comment_date from comment \r\n inner join users on comment.customer_id = users.Userid where product_id=3;", CONN);
            SqlDataReader rea = cm.ExecuteReader();
            commentsSection.InnerHtml = "";
            while (rea.Read())
            {

                commentsSection.InnerHtml += $"   <div class='card-body p-4'>   " +
                    $"    <div class='d-flex flex-start'> " +
                    $"       <img class='rounded-circle shadow-1-strong me-3'   " +
                    $"        src='images\\{rea[1]}' alt='avatar' width='60'  height='60'>   " +
                    $"      <div>  " +
                    $"     <h6 class='fw-bold mb-1'>{rea[0]}</h6>  " +
                    $"    <div class='d-flex align-items-center mb-3'> " +
                    $"     <p class='mb-0'>{Convert.ToDateTime(rea[4]).ToString("dddd, dd MMMM yyyy hh:mm tt")} </p> " +
                    $" </div>  " +
                    $" <p class='mb-0'>{rea[3]} </p> " +
                    $"  </div> " +
                    $"</div>" +
                    $" </div> " +
                    $" <hr class='my-0' />";


            }


            CONN.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
            CONN.Close();
            CONN.Open();
            DateTime now = DateTime.Now;
         
            SqlCommand cm2 = new SqlCommand($" insert into comment values(3 , 4 , @comment , '{now}')", CONN);

            cm2.Parameters.AddWithValue("@comment", TextBox1.Text);
            if (!string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                cm2.ExecuteNonQuery();
               

            }

            CONN.Close();
            CONN.Open();
            SqlCommand cm = new SqlCommand($"  select First_name , user_PICTURE, product_id ,comment , comment_date from comment \r\n inner join users on comment.customer_id = users.Userid where product_id=3;", CONN);
            SqlDataReader rea = cm.ExecuteReader();
            commentsSection.InnerHtml = "";
           
            while (rea.Read())
            {

                commentsSection.InnerHtml += $"   <div class='card-body p-4'>   " +
                    $"    <div class='d-flex flex-start'> " +
                    $"       <img class='rounded-circle shadow-1-strong me-3'   " +
                    $"        src='images\\{rea[1]}' alt='avatar' width='60'  height='60'>   " +
                    $"      <div>  " +
                    $"     <h6 class='fw-bold mb-1'>{rea[0]}</h6>  " +
                    $"    <div class='d-flex align-items-center mb-3'> " +
                    $"     <p class='mb-0'>{Convert.ToDateTime(rea[4]).ToString("dddd, dd MMMM yyyy hh:mm tt")} </p> " +
                    $" </div>  " +
                    $" <p class='mb-0'>{rea[3]} </p> " +
                    $"  </div> " +
                    $"</div>" +
                    $" </div> " +
                    $" <hr class='my-0' />";


            }


            CONN.Close();
            
        }
    }
}