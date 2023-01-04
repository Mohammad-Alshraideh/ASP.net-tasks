using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(jan_02.Startup))]
namespace jan_02
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
