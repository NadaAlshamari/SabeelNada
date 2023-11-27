using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class adminStudents : System.Web.UI.Page
    {
        enEntities db = new enEntities();

        public List<user> list = new List<user>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var x = db.users.Where(c => c.type == "0" || c.type == "3").ToList();

            for (int i = 0; i < x.Count; i++)
            {
                list.Add(x[i]);
            }
            this.DataBind();
        }
    }
}