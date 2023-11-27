using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class courseVideos : System.Web.UI.Page
    {
        enEntities db = new enEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie MyCookie = new HttpCookie("cooklogin");
            MyCookie = Request.Cookies["cooklogin"];
            var type = "";

            if (MyCookie != null && MyCookie.Values.Count > 1)
            {
                var y = MyCookie.Values[1];
                type = HttpUtility.UrlDecode(y.ToLower());
            }

            if (type == "0")
            {
                student.Visible = true;
            }
            else
            {
                student.Visible = false;
            }


            if (type == "0")
            {
                var x = db.courses.Where(c => c.c_level == "1").ToList<cours>();
                A1.InnerText = x[0].title;
                A2.InnerText = x[1].title;
                A3.InnerText = x[2].title;
                A4.InnerText = x[3].title;
                A5.InnerText = x[4].title;
                A6.InnerText = x[5].title;
                A7.InnerText = x[6].title;

                A1.Attributes.Add("href", "~/Content/basics/" + x[0].attach);
                A2.Attributes.Add("href", "~/Content/basics/" + x[1].attach);
                A3.Attributes.Add("href", "~/Content/basics/" + x[2].attach);
                A4.Attributes.Add("href", "~/Content/basics/" + x[3].attach);
                A5.Attributes.Add("href", "~/Content/basics/" + x[4].attach);
                A6.Attributes.Add("href", "~/Content/basics/" + x[5].attach);
                A7.Attributes.Add("href", "~/Content/basics/" + x[6].attach);

                desc.InnerText = x[0].description;
            }
            else
            {
                var x = db.deafcourses.Where(c => c.c_level == "1").ToList<deafcours>();
                A1.InnerText = x[0].title;
                A2.InnerText = x[1].title;
                A3.InnerText = x[2].title;
                A4.InnerText = x[3].title;
                A5.InnerText = x[4].title;
                A6.InnerText = x[5].title;
                A7.InnerText = x[6].title;

                A1.Attributes.Add("href", "~/Content/deaf_basics/" + x[0].attach);
                A2.Attributes.Add("href", "~/Content/deaf_basics/" + x[1].attach);
                A3.Attributes.Add("href", "~/Content/deaf_basics/" + x[2].attach);
                A4.Attributes.Add("href", "~/Content/deaf_basics/" + x[3].attach);
                A5.Attributes.Add("href", "~/Content/deaf_basics/" + x[4].attach);
                A6.Attributes.Add("href", "~/Content/deaf_basics/" + x[5].attach);
                A7.Attributes.Add("href", "~/Content/deaf_basics/" + x[6].attach);

                desc.InnerText = x[0].description;
            }

            

        }


        protected void A1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("courses.aspx"); 
        }
    }
}