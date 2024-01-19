using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using Newtonsoft.Json;

namespace MVP_Timesheet
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\EmployeeInfo.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void button__text(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Remove the captcha code comparison as reCAPTCHA will handle it

                // Get reCAPTCHA response
                string response = Request.Form["g-recaptcha-response"];

                string secretKey = " 6LeyxxopAAAAAFnfACbYVj4ucIrT06qnXbFDYsMr"; //  secret key

                using (var client = new WebClient())
                {
                    string result = client.DownloadString($"https://www.google.com/recaptcha/api/siteverify?secret={secretKey}&response={response}");
                    var captchaResponse = JsonConvert.DeserializeObject<CaptchaResponse>(result);

                    if (captchaResponse.Success)
                    {
                        // reCAPTCHA validation passed, continue with your login logic
                        string email = Request.Form["txtEmail"];
                        string password = Request.Form["txtPassword"];

                        string query = "SELECT count(*) FROM Register WHERE EmailAddress = @Email and Password = @Password";

                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("@Email", email.Trim());
                            cmd.Parameters.AddWithValue("@Password", password.Trim());

                            con.Open();
                            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                            con.Close();

                            if (count > 0)
                            {
                                Session["@Email"] = email.Trim();
                                Response.Redirect("Dashboard.aspx");
                            }
                            else
                            {
                                Response.Write("<script>alert('Incorrect credentials')</script>");
                            }
                        }
                    }
                    else
                    {
                        Response.Write("");
                    }
                }
            }
        }
    }
}

