using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class profile : System.Web.UI.Page
    {
        enEntities db = new enEntities();

        public List<user> list = new List<user>();
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie MyCookie = new HttpCookie("cooklogin");
            MyCookie = Request.Cookies["cooklogin"];

            var xx = MyCookie.Values[0];
            var y = HttpUtility.UrlDecode(xx.ToLower());

            var x = db.users.Where(c => c.email==y).ToList();

            for (int i = 0; i < x.Count; i++)
            {
                list.Add(x[i]);
            }
            this.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                try
                {
                    HttpCookie MyCookie = new HttpCookie("cooklogin");
                    MyCookie = Request.Cookies["cooklogin"];

                    var xx = MyCookie.Values[0];
                    var teacherEmail = HttpUtility.UrlDecode(xx.ToLower());

                    var usd = db.users.FirstOrDefault(c => c.email == teacherEmail);

                    int id = usd.id;

                    var us = db.users.Find(id);
                    us.cv = FileUpload1.FileName;
                    db.SaveChanges();

                    // If the directory doesn't exist, create it.
                    if (!Directory.Exists(Server.MapPath("~/Content/CV/") + teacherEmail))
                    {
                        var path = Directory.CreateDirectory(Server.MapPath("~/Content/CV/") + teacherEmail);
                    }
                    //
                    FileUpload1.SaveAs(Server.MapPath("~/Content/CV/" + teacherEmail + "/") + FileUpload1.FileName);
                    Response.Redirect("../Default.aspx");
                }
                catch (Exception)
                {
                    // Fail silently
                }

                
            }
        }
    }
}