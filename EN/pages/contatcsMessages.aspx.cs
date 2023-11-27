using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class contatcsMessages : System.Web.UI.Page
    {
        enEntities db = new enEntities();

        public List<contact> list = new List<contact>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var x = db.contacts.ToList();

            for (int i = 0; i < x.Count; i++)
            {
                list.Add(x[i]);
            }
            this.DataBind();
        }
    }
}