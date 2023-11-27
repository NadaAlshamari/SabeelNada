using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EN;

namespace EN.Account
{
    public partial class ucLogin : System.Web.UI.UserControl
    {
        enEntities db = new enEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var getPass = db.users.FirstOrDefault(c => c.email == TextBox2.Text);
            var pass = getPass.password;

            bool isPasswordCorrect = BCrypt.Net.BCrypt.Verify(TextBox3.Text, pass);

            var myUser = db.users.Where(u => u.email == TextBox2.Text);
            
            if(myUser.Count()>0 && isPasswordCorrect == true)
            {
                HttpCookie MyCookie = new HttpCookie("cooklogin");
                

                var usd = db.users.FirstOrDefault(c => c.email == TextBox2.Text);

                var level = usd.c_level;
                var type = usd.type;

                MyCookie.Values.Add("email", HttpUtility.UrlEncode(TextBox2.Text.ToUpper()));
                MyCookie.Values.Add("type", HttpUtility.UrlEncode(type.ToUpper()));
                Response.Cookies.Add(MyCookie);

                if(level == null && type == "0")
                {
                    string message = "Logged Successfully!";
                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    sb.Append("<script type = 'text/javascript'>");
                    sb.Append("window.onload=function(){");
                    sb.Append("alert('");
                    sb.Append(message);
                    sb.Append("');window.location ='../pages/quiz.aspx';};");
                    sb.Append("</script>");
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                    //Response.Redirect("../pages/quiz.aspx");
                }
                else if (level == null && type == "3")
                {
                    string message = "Logged Successfully!";
                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    sb.Append("<script type = 'text/javascript'>");
                    sb.Append("window.onload=function(){");
                    sb.Append("alert('");
                    sb.Append(message);
                    sb.Append("');window.location ='../pages/quiz.aspx';};");
                    sb.Append("</script>");
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                    //Response.Redirect("../pages/quiz.aspx");
                }
                else
                {
                    string message = "Logged Successfully!";
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
            else
            {
                string message = "This user doesn't exist!";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("');window.location ='Login.aspx';};");
                sb.Append("</script>");
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                //Response.Redirect("Login.aspx");
            }

        }
    }
}