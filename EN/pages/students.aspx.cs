using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class students : System.Web.UI.Page
    {
        enEntities db = new enEntities();
        public List<user> list = new List<user>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var students = db.users.Where(c => c.type == "0").ToList();

            for (int i = 0; i < students.Count; i++)
            {
                list.Add(students[i]);
            }
            this.DataBind();
        }
    }
}