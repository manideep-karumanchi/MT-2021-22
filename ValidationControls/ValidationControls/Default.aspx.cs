using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationControls
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void branchValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String branch = tbregdno.Text.Substring(4, 2);
            if (tbbranch.Text.Equals(branch))
            {
                args.IsValid = true;
            }
            else {
                args.IsValid = false;
            }
        }

        protected void cmdsubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
                Response.Write("All the controls contain valid details");
        }

        protected void cmdclear_Click(object sender, EventArgs e)
        {
                Response.Write("Vilidation will not performed");
        }
    }
}