using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDotNet_Arif.StateManagement
{
    public partial class CacheIn_DataCacheingProve : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Cache Value assign to The Two Texbox from  Another Page 

            txtName.Text = Cache["un"].ToString();
            txtPass.Text = Cache["pw"].ToString();
        }
    }
}