using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDotNet_Arif.StateManagement
{
    public partial class Cache_DataCaching : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //TextBox The Value of textbox is store in cache 

            Cache["un"] = txtUserName.Text;
            Cache["pw"] = txtPassword.Text;
            Response.Redirect("CacheIn_DataCacheingProve.aspx");
        }
    }
}