using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class adminElibrary : System.Web.UI.Page
    {
        enEntities db = new enEntities();

        public List<book> list = new List<book>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var books = db.books.ToList();

            for (int i = 0; i < books.Count; i++)
            {
                list.Add(books[i]);
            }
            this.DataBind();
        }
    }
}