using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TracingExample
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void cmdsubmit_Click(object sender, EventArgs e)
        {
            Trace.Warn("cmdsubmit_click","About to place a value in session");
            Session["a"] = 100;
            Trace.Warn("cmdsubmit_click","Placed a value in session state");
        }
    }
}