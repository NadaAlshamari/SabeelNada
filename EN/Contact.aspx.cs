using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN
{
    public partial class Contact : Page
    {
        enEntities db = new enEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            contact b = new contact
            {
                name = TextBox1.Text,
                email = TextBox2.Text,
                message = TextArea1.Value,
            };
            db.contacts.Add(b);
            db.SaveChanges();
            Response.Redirect("Default.aspx");


        }
    }
}