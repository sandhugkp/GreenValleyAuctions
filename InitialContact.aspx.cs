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
    public partial class WebForm5 : System.Web.UI.Page
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

        protected void CalMainCalander_SelectionChanged(object sender, EventArgs e)
        {
            lblFirstStatus.Text = CalMainCalander.SelectedDate.ToLongDateString();
            lblSecondStatus.Text = CalMainCalander.SelectedDate.ToShortDateString();
            lblThirdStatus.Text = CalMainCalander.SelectedDate.ToString();
        }

        protected void btnSetToCurrentDate_Click(object sender, EventArgs e)
        {
            CalMainCalander.SelectedDate = DateTime.Today;

            CalMainCalander_SelectionChanged(null, null);
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtEmail.Text = "";
            txtNotes.Text = "";
            txtPhoneNumber.Text = "";
            txtSell.Text = "";
            txtWhatSell.Text = "";
            chkAuction.Checked = false;
            chkAppraisal.Checked = false;
            chkConsignment.Checked = false;
            chkMove.Checked = false;
            rdoDownsizing1.Checked = false;
            rdoDownsizing2.Checked = false;
            rdoMoving1.Checked = false;
            rdoMoving2.Checked = false;
            rdoSettling1.Checked = false;
            rdoSettling2.Checked = false;

            HttpUtility.HtmlEncode(txtEmail.Text);
            HttpUtility.HtmlEncode(txtNotes.Text);
            HttpUtility.HtmlEncode(txtPhoneNumber.Text);
            HttpUtility.HtmlEncode(txtSell.Text);
            HttpUtility.HtmlEncode(txtWhatSell.Text);


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {


            //SqlConnection sqlConnect = new SqlConnection("Server=Localhost;Database=GreenValleyAuctions;Trusted_Connection=Yes; ");
            //sqlConnect.Open();
            //string sqlquery = "INSERT INTO [Service] (Origin,Destination,Budget,ServiceCost,ServiceDate,ServiceName,EmployeeContact) VALUES (@Origin,@Destination,@Budget,@ServiceCost,@ServiceDate,@ServiceName,@EmployeeContact)";
            //SqlCommand cmd = new SqlCommand(sqlquery, sqlConnect);

            HttpUtility.HtmlEncode(txtEmail.Text);
            HttpUtility.HtmlEncode(txtNotes.Text);
            HttpUtility.HtmlEncode(txtPhoneNumber.Text);
            HttpUtility.HtmlEncode(txtSell.Text);
            HttpUtility.HtmlEncode(txtWhatSell.Text);


        }
    }
}