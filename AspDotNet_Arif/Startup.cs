using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AspDotNet_Arif.Startup))]
namespace AspDotNet_Arif
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
