using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EN.Startup))]
namespace EN
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
