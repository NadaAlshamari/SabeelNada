using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class delete : System.Web.UI.Page
    {
        enEntities db = new enEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"].ToString();
            var type = Request.QueryString["type"].ToString();

            if(type=="s" || type=="t")
            {
                var u = db.users.Find(Int32.Parse(id));
                db.users.Remove(u);
                db.SaveChanges();
                Response.Redirect("../Default.aspx");
            }

            if (type == "b")
            {
                var b = db.books.Find(Int32.Parse(id));
                db.books.Remove(b);
                db.SaveChanges();
                Response.Redirect("../Default.aspx");
            }
        }
    }
}