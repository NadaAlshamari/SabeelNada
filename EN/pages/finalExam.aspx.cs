using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class finalExam : System.Web.UI.Page
    {
        int result = 0;
        enEntities db = new enEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Radio1.Checked) { result += 1; }
            if (Radio4.Checked) { result += 1; }
            if (Radio7.Checked) { result += 1; }
            if (Radio10.Checked) { result += 1; }
            if (Radio13.Checked) { result += 1; }
            if (Radio16.Checked) { result += 1; }
            if (Radio19.Checked) { result += 1; }
            if (Radio22.Checked) { result += 1; }
            if (Radio25.Checked) { result += 1; }
            if (Radio28.Checked) { result += 1; }

            HttpCookie MyCookie = new HttpCookie("cooklogin");
            MyCookie = Request.Cookies["cooklogin"];

            var x = MyCookie.Values[0];
            var y = HttpUtility.UrlDecode(x.ToLower());

            var usd = db.users.FirstOrDefault(c => c.email == y);

            int id = usd.id;

            if (result >= 5)
            {
                var us = db.users.Find(id);
                us.c_level = "7";
                db.SaveChanges();
                //
                string message = "Congrats!, Your Grade is : " + result.ToString() + ", You will move to Intermediate level";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("');window.location ='../Default.aspx';};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            else
            {
                var us = db.users.Find(id);
                us.c_level = "4";
                db.SaveChanges();

                string message = "Sorry!! ,Your Grade is : " + result.ToString() + "You will not move to Intermediate level";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("');window.location ='../Default.aspx';};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }

            //Response.Redirect("../Default.aspx");
        }

    }
}