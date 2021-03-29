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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnUpdateDate_Click1(object sender, EventArgs e)
        {
            SqlConnection sqlConnect = new SqlConnection(" Server=Localhost;Database=GreenValleyAuctions;Trusted_Connection=Yes; ");
            sqlConnect.Open();
            String sqlQuery = "Update [dbo].[Auction] set PickUpDate = @PickUpDate, BringInDate = @BringInDate, LookAtDate = @LookAtDate  where AuctionID =  " + ddlLiveLst.SelectedValue;

           

            SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnect);
            sqlCommand.Parameters.AddWithValue("@PickUpDate", HttpUtility.HtmlEncode(txtPickUpDate.Text));
            sqlCommand.Parameters.AddWithValue("@BringInDate", HttpUtility.HtmlEncode(txtBringInDate.Text));
            sqlCommand.Parameters.AddWithValue("@LookAtDate", HttpUtility.HtmlEncode(txtLookAtDate.Text));
            SqlCommand cmd = sqlConnect.CreateCommand();


            cmd.CommandType = CommandType.Text;


            cmd.CommandText = "update Auction set PickUpDate = @PickUpDate, BringInDate = @BringInDate, LookAtDate = @LookAtDate where AuctionID =  " + ddlLiveLst.SelectedValue;

            cmd.ExecuteNonQuery();
            sqlConnect.Close();
        }

        protected void ddlLiveLst_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void AuctionLookbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AuctionLookAt.aspx");
        }
    }
}