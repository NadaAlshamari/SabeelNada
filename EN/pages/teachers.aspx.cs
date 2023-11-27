using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class teachers : System.Web.UI.Page
    {
        enEntities db = new enEntities();
        public List<user> list = new List<user>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var teachers = db.users.Where(c=>c.type=="1").ToList();

            for (int i = 0; i < teachers.Count; i++)
            {
                list.Add(teachers[i]);
            }
            this.DataBind();
        }
    }
}