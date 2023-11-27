using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class editProfile : System.Web.UI.Page
    {
        enEntities db = new enEntities();
        public const int salt_size = 24;
        public const int hash_size = 24;
        public const int iteration = 100000;
        static byte[] salt1 = new byte[salt_size];

        public List<user> list = new List<user>();

        string username = "";
        string email = "";
        string password = "";

        string defaultPass = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie MyCookie = new HttpCookie("cooklogin");
            MyCookie = Request.Cookies["cooklogin"];

            var xx = MyCookie.Values[0];
            var y = HttpUtility.UrlDecode(xx.ToLower());

            var x = db.users.Where(c => c.email == y).ToList();

            for (int i = 0; i < x.Count; i++)
            {
                label1.InnerText = x[i].username;
                label2.InnerText = x[i].email;
                defaultPass = x[i].password;
                label3.InnerText = "Password is encrypted";

                list.Add(x[i]);
            }
            this.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "") { TextBox1.Text = label1.InnerText; }
            if (TextBox2.Text == "") { TextBox2.Text = label2.InnerText; }
            if (TextBox3.Text == "") 
            { 
                TextBox3.Text = defaultPass.ToString();
                password = defaultPass;
            }
            else
            {
                password = BCrypt.Net.BCrypt.HashPassword(TextBox3.Text);
            }

            string hashPass = BCrypt.Net.BCrypt.HashPassword(TextBox3.Text);

            username = TextBox1.Text;
            email = TextBox2.Text;

            HttpCookie MyCookie = new HttpCookie("cooklogin");
            MyCookie = Request.Cookies["cooklogin"];

            var x = MyCookie.Values[0];
            var y = HttpUtility.UrlDecode(x.ToLower());

            var usd = db.users.FirstOrDefault(c => c.email == y);

            int id = usd.id;

            var us = db.users.Find(id);
            us.username = username;
            us.email = email;
            us.password = password;
            db.SaveChanges();

            string message = "Profile Updated Successfully!, You will logout now, Login again please";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("');window.location ='logout.aspx';};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }


    }
}