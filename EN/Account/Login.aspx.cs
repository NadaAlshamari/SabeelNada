using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using EN.Models;

namespace EN.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ClientScriptManager cs = Page.ClientScript;
                String cbReference = cs.GetCallbackEventReference("'" +
                    Page.UniqueID + "'", "arg", "ReceiveServerData", "",
                    "ProcessCallBackError", false);
                String callbackScript = "function CallTheServer(arg, context) {" +
                    cbReference + "; }";
                cs.RegisterClientScriptBlock(this.GetType(), "CallTheServer",
                    callbackScript, true);
            }
        }
    }
}