using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class courses : System.Web.UI.Page
    {
        enEntities db = new enEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie MyCookie = new HttpCookie("cooklogin");
            MyCookie = Request.Cookies["cooklogin"];

            var x = MyCookie.Values[0];
            var y = HttpUtility.UrlDecode(x.ToLower());

            var usd = db.users.FirstOrDefault(c => c.email == y);
            int level=0;
            if (usd.c_level == null) { level = 0; }
            else { level = Int32.Parse(usd.c_level); }

            if(level > 0 && level <= 4)
            {
                level1.Visible = true;
                level2.Visible = true;
                level3.Visible = true;

                level1.Attributes.CssStyle.Add("z-index", "0");
                level2.Attributes.CssStyle.Add("z-index", "-1");
                level3.Attributes.CssStyle.Add("z-index", "-1");
            }

            if (level > 4 && level <= 7)
            {
                level1.Visible = false;
                level2.Visible = true;
                level3.Visible = true;

                level2.Attributes.CssStyle.Add("z-index", "0");
                level3.Attributes.CssStyle.Add("z-index", "-1");
            }

            if (level > 7 && level <= 10)
            {
                level1.Visible = false;
                level2.Visible = false;
                level3.Visible = true;

                level3.Attributes.CssStyle.Add("z-index", "0");
            }
            if (level == 10)
            {
                level1.Visible = false;
                level2.Visible = false;
                level3.Visible = true;
            }
        }
    }
}