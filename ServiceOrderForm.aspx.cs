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
    public partial class ServiceOrderForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {


            String sqlQuery = "Select CustomerName, CustomerEmail, CustomerPhone from Customer";
            SqlConnection sqlConnect = new SqlConnection("Server=Localhost;Database=GreenValleyAuctions;Trusted_Connection=Yes;");
            SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);
            DataTable dtForGridView = new DataTable();
            sqlAdapter.Fill(dtForGridView);
            gvCustomerInfo.DataSource = dtForGridView;
            gvCustomerInfo.DataBind();
            sqlConnect.Open();
            SqlCommand cmd = sqlConnect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert into ServiceOrder (MainServices, Combination, LookAtDate, LookAtTime, PickUpDate, PickUpTime," +
                "AuctionDate, AuctionTime, AppraisalDate, AppraisalTime, MoveDate, MoveTime, ConsignmentDate, ConsignmentTime," +
                "AdditionalServices, PickUpFee, StorageFee) values " +
                "('" + ddlMainServices.Text + "','" + txtCombination.Text + "','" + txtLookAtDate.Text + "'," +
                " '" + txtLookAtTime.Text + "','" + txtPickUpDate.Text + "','" + txtPickUpTime.Text + "','" + txtAuctionDate.Text + "','"
                + txtAuctionTime.Text + "','" + txtAppDate.Text + "','" + txtAppTime.Text + "','" + txtMoveDate.Text + "','"
                + txtMoveTime.Text + "','" + txtConsignmentDate + "','" + txtConsignmentTime + "','" + cblAddServices.Text + "','"
                + txtPickUpFee + "','" + txtStorageFee + "')";
            cmd.ExecuteNonQuery();
            sqlConnect.Close();
        }

        protected void ddlSelectCustomer_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void AuctionScheduling_Click(object sender, EventArgs e)
        {
            Response.Redirect("AuctionScheduling.aspx");
        }
    }
}