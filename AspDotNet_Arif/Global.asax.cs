
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

//using Microsoft.AspNet.FriendlyUrls;
namespace AspDotNet_Arif
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);



            //RouteTable.Routes.EnableFriendlyUrls();


            RouteTable.Routes.MapPageRoute(
                routeName: "Branch Info",
                routeUrl: "Authorization/{id}/Branch",
                physicalFile: "~/Authorization/Branch.aspx"

                );




            RouteTable.Routes.MapPageRoute(
                routeName: "CardRegistration Info",
                routeUrl: "ContentPages/{id}/CardRegistrationForEmail",
                physicalFile: "~/ContentPages/CardRegistrationForEmail.aspx"

                );



            //Default Route
            RouteTable.Routes.MapPageRoute(
                routeName: "Islami Bank Ltd",
                routeUrl: "",
                physicalFile: "~/Default.aspx"

                );

        }
    }
}