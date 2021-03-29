using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Lab3
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdateAuctionLookAt_Click(object sender, EventArgs e)
        {
            String sqlQuery = "Insert into [dbo].[AuctionLookAt] values(@PhotoSpot, @TruckAccessibility, @SuppliesNeeded, @BoxesNumberAndType, @CrewMembers, @NumberOfTrucks, @NeedStatus";

            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["GreenValleyAuctions"].ConnectionString);

            SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnect);
            sqlCommand.Parameters.AddWithValue("@PhotoSpot", HttpUtility.HtmlEncode(txtPhotoSpot.Text));
            sqlCommand.Parameters.AddWithValue("@TruckAccessibility", HttpUtility.HtmlEncode(txtTruckAccessibility.Text));
            sqlCommand.Parameters.AddWithValue("@SuppliesNeeded", HttpUtility.HtmlEncode(txtSuppliesNeeded.Text));
            sqlCommand.Parameters.AddWithValue("@BoxesNumberAndType", HttpUtility.HtmlEncode(txtBoxesNumberAndType.Text));
            sqlCommand.Parameters.AddWithValue("@CrewMembers", HttpUtility.HtmlEncode(txtCrewMembers.Text));
            sqlCommand.Parameters.AddWithValue("@NumberOfTrucks", HttpUtility.HtmlEncode(txtNumberOfTrucks.Text));
            sqlCommand.Parameters.AddWithValue("@NeedStatus", HttpUtility.HtmlEncode(rblNeedStatus.Text));
            sqlConnect.Open();
            SqlCommand cmd = sqlConnect.CreateCommand();


            cmd.CommandType = CommandType.Text;


            cmd.CommandText = "insert into AuctionLookAt (PhotoSpot, TruckAccessibility, SuppliesNeeded, BoxesNumberAndType, CrewMembers, NumberOfTrucks, NeedStatus) values" +
                " ('" + txtPhotoSpot.Text + "','" + txtTruckAccessibility.Text + "','" + txtSuppliesNeeded.Text + "'," +
                    txtBoxesNumberAndType.Text + "','" + txtCrewMembers.Text + "','" + txtNumberOfTrucks.Text + "','" + rblNeedStatus.Text + "')";

            cmd.ExecuteNonQuery();
            sqlConnect.Close();
        }

        protected void ddlLiveList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void AuctionPickupbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AuctionPickUp.aspx");
        }
    }
}
