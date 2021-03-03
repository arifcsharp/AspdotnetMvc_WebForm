using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace AspDotNet_Arif
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;

            routes.EnableFriendlyUrls(settings);




            //routes.MapPageRoute(
            //    routeName: "Branch Info",
            //    routeUrl: "Authorization/{id}/Branch",
            //    physicalFile: "~/Authorization/Branch.aspx"

            //    );





            //routes.MapPageRoute(
            //    routeName: "CardRegistration Info",
            //    routeUrl: "ContentPages/{id}/CardRegistrationForEmail",
            //    physicalFile: "~/ContentPages/CardRegistrationForEmail.aspx"

            //    );




            ////Default Route
            //routes.MapPageRoute(
            //    routeName: "Islami Bank Ltd",
            //    routeUrl: "",
            //    physicalFile: "~/ContentPages/Branch.aspx"

            //    );



        }
    }
}
