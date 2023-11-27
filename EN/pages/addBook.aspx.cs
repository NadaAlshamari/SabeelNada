using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class addBook : System.Web.UI.Page
    {
        enEntities db = new enEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie MyCookie = new HttpCookie("cooklogin");
            MyCookie = Request.Cookies["cooklogin"];
            var email="";
            if (MyCookie != null)
            {
                var x = MyCookie.Values[0];
                email = HttpUtility.UrlDecode(x.ToLower());
            }
            book b = new book
            {
                name = TextBox1.Text,
                book_url = TextBox2.Text,
                download_url = TextBox3.Text,
                teacher_id = email
            };
            db.books.Add(b);
            db.SaveChanges();
            Response.Redirect("../Default.aspx");


        }

    }
}