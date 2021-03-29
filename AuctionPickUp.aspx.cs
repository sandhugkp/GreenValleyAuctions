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
    public partial class AuctionPickUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            String sqlQuery = "Select CustomerName, CustomerEmail, CustomerPhone, DateAndTime from Customer";
            SqlConnection sqlConnect = new SqlConnection("Server=Localhost;Database=GreenValleyAuctions;Trusted_Connection=Yes;");
            SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);
            DataTable dtForGridView = new DataTable();
            sqlAdapter.Fill(dtForGridView);
            gvCustomerInfo.DataSource = dtForGridView;
            gvCustomerInfo.DataBind();
            sqlConnect.Open();
            SqlCommand cmd = sqlConnect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update Auction set BringInDate = [txtBringInConfirmed], PickUpDate = [txtPickUpConfirmed]," +
                "LookAtDate = [txtLookAtConfirmed], ApprasialDate = [txtApprasialConfirmed], SaleDate = [txtSellConfirmed], " +
                "StorageLocation = [txtStorageLocation] where AuctionID = " + ddlSelectCustomer.SelectedValue;
            cmd.ExecuteNonQuery();
            sqlConnect.Close();
        }

        protected void ddlSelectCustomer_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}