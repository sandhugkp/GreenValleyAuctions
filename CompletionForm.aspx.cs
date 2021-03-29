using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace GreenValleyAuctions
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //statement to redirect user to login page before access is granted to other webforms
            if (Session["Username"] != null)
            {
                
            }
            else
            {
                Session["InvalidUse"] = "Please Login to use site.";
                Response.Redirect("Login.aspx");
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtAdditonalExpenses.Text = "";
            txtEmployeesInvolved.Text = "";
            txtExperience.Text = "";
            txtFinalCost.Text = "";
            txtFromAddress.Text = "";
            txtMileage.Text = "";
            txtPaymentReceived.Text = "";
            txtReviewFollowUp.Text = "";
            txtToAddress.Text = "";
            txtTrucks.Text = "";
            txtAdditionalNotes.Text = "";

            HttpUtility.HtmlEncode(txtAdditonalExpenses.Text);
            HttpUtility.HtmlEncode(txtEmployeesInvolved.Text);
            HttpUtility.HtmlEncode(txtExperience.Text);
            HttpUtility.HtmlEncode(txtFinalCost.Text);
            HttpUtility.HtmlEncode(txtFromAddress.Text);
            HttpUtility.HtmlEncode(txtMileage.Text);
            HttpUtility.HtmlEncode(txtPaymentReceived.Text);
            HttpUtility.HtmlEncode(txtReviewFollowUp.Text);
            HttpUtility.HtmlEncode(txtToAddress.Text);
            HttpUtility.HtmlEncode(txtTrucks.Text);
            HttpUtility.HtmlEncode(txtAdditionalNotes.Text);

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            HttpUtility.HtmlEncode(txtAdditonalExpenses.Text);
            HttpUtility.HtmlEncode(txtEmployeesInvolved.Text);
            HttpUtility.HtmlEncode(txtExperience.Text);
            HttpUtility.HtmlEncode(txtFinalCost.Text);
            HttpUtility.HtmlEncode(txtFromAddress.Text);
            HttpUtility.HtmlEncode(txtMileage.Text);
            HttpUtility.HtmlEncode(txtPaymentReceived.Text);
            HttpUtility.HtmlEncode(txtReviewFollowUp.Text);
            HttpUtility.HtmlEncode(txtToAddress.Text);
            HttpUtility.HtmlEncode(txtTrucks.Text);
            HttpUtility.HtmlEncode(txtAdditionalNotes.Text);

        }
    }
}