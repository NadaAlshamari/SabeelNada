using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EN.pages
{
    public partial class chat : System.Web.UI.Page
    {
        enEntities db = new enEntities();
        public List<chatboot> list = new List<chatboot>();
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie MyCookie = new HttpCookie("cooklogin");
            MyCookie = Request.Cookies["cooklogin"];
            var type = "";
            if (MyCookie != null && MyCookie.Values.Count > 1)
            {
                var x = MyCookie.Values[1];
                type = HttpUtility.UrlDecode(x.ToLower());
            }

            if(type == "0")
            {
                var email = Request.QueryString["id"].ToString();
                var chaat = db.chatboots.Where(c => c.teacher_id == email).ToList();
                for (int i = 0; i < chaat.Count; i++)
                {
                    list.Add(chaat[i]);
                }
                this.DataBind();
            }

            else if (type == "1")
            {
                var email = Request.QueryString["id"].ToString();
                var chaat = db.chatboots.Where(c => c.student_id == email).ToList();
                for (int i = 0; i < chaat.Count; i++)
                {
                    list.Add(chaat[i]);
                }
                this.DataBind();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie MyCookie = new HttpCookie("cooklogin");
            MyCookie = Request.Cookies["cooklogin"];
            var sendUser="";
            var recieverUser="";
            var type="";
            var sendDate = DateTime.Now.ToShortTimeString();
            if (MyCookie != null && MyCookie.Values.Count > 1)
            {
                var x = MyCookie.Values[1];
                type = HttpUtility.UrlDecode(x.ToLower());
            }

            if(type == "0")
            {
                sendUser = HttpUtility.UrlDecode(MyCookie.Values[0].ToLower());
                recieverUser = Request.QueryString["id"].ToString();

                chatboot c = new chatboot
                {
                    message = TextBox1.Text,
                    student_id = sendUser,
                    teacher_id = recieverUser,
                    from_student = 1,
                    from_teacher = 0,
                    added_date = DateTime.Parse(sendDate)
                };

                db.chatboots.Add(c);
                db.SaveChanges();
                TextBox1.Text = "";
            }

            else if (type == "1")
            {
                sendUser = HttpUtility.UrlDecode(MyCookie.Values[0].ToLower());
                recieverUser = Request.QueryString["id"].ToString();

                chatboot c = new chatboot
                {
                    message = TextBox1.Text,
                    student_id = recieverUser,
                    teacher_id = sendUser,
                    from_student = 0,
                    from_teacher = 1,
                    added_date = DateTime.Parse(sendDate)
                };

                db.chatboots.Add(c);
                db.SaveChanges();
                TextBox1.Text = "";
            }

            
        }
    }
}