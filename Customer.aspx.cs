using System;
using System.Collections.Generic;
using System;

namespace WebAppAssignment9
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            LblInfo.Visible = false;
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            LblInfo.Visible = true;
            LblInfo.Text = "Registration Done! Complete Information: ";
            LblInfo.Text += "Name: " + TxtName.Text;
            LblInfo.Text += ", Mobile: " + TxtMobile.Text;
            LblInfo.Text += ", Email: " + TxtEmail.Text;
        }

        protected void CustomValidatorName_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            args.IsValid = TxtName.Text.Length >= 6;
        }
    }
}
