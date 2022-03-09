using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RichControls
{
    public partial class MultiView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String[] colourArray = Enum.GetNames(typeof(System.Drawing.KnownColor));
                lstBackColor.DataSource = colourArray;
                lstBackColor.DataBind();
                lstForeColor.DataSource = colourArray;
                lstForeColor.DataBind();

                InstalledFontCollection fc = new InstalledFontCollection();
                foreach (FontFamily ff in fc.Families)
                {
                    lstFontNames.Items.Add(ff.Name);
                }

                String[] bs = Enum.GetNames(typeof(BorderStyle));
                lstBorderStyle.DataSource = bs;
                lstBorderStyle.DataBind();
                lstBorderStyle.SelectedIndex = 0;

                imgDefault.ImageUrl = "~/1.jpg";
                imgDefault.Visible = false;

            }
        }
        protected void UpdateUI(object sender, EventArgs e) {
            int fs = 0;
            pnlCard.BackColor = Color.FromName(lstBackColor.SelectedValue);
            pnlCard.ForeColor = Color.FromName(lstForeColor.SelectedValue);
            lblGreeting.Font.Name = lstFontNames.SelectedValue;
            if (Int32.TryParse(txtFontSize.Text, out fs))
            {
                lblGreeting.Font.Size = fs;
            }
            else {
                lblGreeting.Font.Size = 12;
            }
            lblGreeting.Text = txtGreeting.Text;
            TypeConverter converter = TypeDescriptor.GetConverter(typeof(BorderStyle));
            pnlCard.BorderStyle = (BorderStyle)converter.ConvertFromString(lstBorderStyle.SelectedValue);
            if (chkDefaultPic.Checked)
            {
                imgDefault.Visible = true;
            }
        }
    }
}