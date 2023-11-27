using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EN;
using System.Net.Mail;
using System.Text;
using System.Security.Cryptography;

namespace EN.Account
{
    public partial class usSignup : System.Web.UI.UserControl
    {
        enEntities db = new enEntities();
        public const int salt_size = 24;
        public const int hash_size = 24;
        public const int iteration = 100000;
        static byte[] salt1 = new byte[salt_size];
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void sendEmail(string email, string username)
        {
            string to = email; //To address    
            string from = "Amazon.cppoa@gmail.com"; //From address

            MailMessage message = new MailMessage(from, to);

            string usernameUser = @"" +username+ " ,Welcome to Sabeel Platform <br />";
            string signature = @"
             Regards, <br /> <br /> <br />


             
             Sabeel Platform <br />
             Sabeel manager <br />
             Hafr Albatin 39511  <br />
             Kingdom Of Saudi Arabia <br />
             (+966) 563504378 <br />
             (+966) 551369346 <br />
              nada1234@gmail.com";

            string mailbody = usernameUser + signature;

            message.Subject = "Sabeel Platform";
           
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("Nadaalshammari.sa@gmail.com", "tmtzilatyqcmxzyn");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string hashPass = BCrypt.Net.BCrypt.HashPassword(TextBox3.Text);

            if(RadioButton1.Checked)
            {
                user u = new user
                {
                    username = TextBox1.Text,
                    email = TextBox2.Text,
                    password = hashPass.ToString(),
                    type = "0"
                };
                db.users.Add(u);
                db.SaveChanges();

                sendEmail(TextBox2.Text, TextBox1.Text);

                string message = "Registered Successfully!";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("');window.location ='../Default.aspx';};");
                sb.Append("</script>");
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                //Response.Redirect("../Default.aspx");
            }
            else if(RadioButton2.Checked)
            {
                user u = new user
                {
                    username = TextBox1.Text,
                    email = TextBox2.Text,
                    password = hashPass.ToString(),
                    type = "1",
                    c_level = "0"
                };
                db.users.Add(u);
                db.SaveChanges();

                sendEmail(TextBox2.Text, TextBox1.Text);

                string message = "Registered Successfully!";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("');window.location ='../Default.aspx';};");
                sb.Append("</script>");
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                //Response.Redirect("../Default.aspx");
            }
            else if (RadioButton3.Checked)
            {
                user u = new user
                {
                    username = TextBox1.Text,
                    email = TextBox2.Text,
                    password = hashPass.ToString(),
                    type = "3"
                };
                db.users.Add(u);
                db.SaveChanges();

                sendEmail(TextBox2.Text, TextBox1.Text);

                string message = "Registered Successfully!";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("');window.location ='../Default.aspx';};");
                sb.Append("</script>");
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                //Response.Redirect("../Default.aspx");
            }
            else
            {
                user u = new user
                {
                    username = TextBox1.Text,
                    email = TextBox2.Text,
                    password = hashPass.ToString(),
                    type = "0"
                };
                db.users.Add(u);
                db.SaveChanges();

                string message = "Registered Successfully!";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("');window.location ='../Default.aspx';};");
                sb.Append("</script>");
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                //Response.Redirect("../Default.aspx");
            }

            
            
        }

        
    }
}