using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie MyCookie = new HttpCookie("cooklogin");
            MyCookie.Values.Clear();
            MyCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(MyCookie);
            Response.Redirect("../Default.aspx");
        }
    }
}