using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Lab2
{
    public partial class NewItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //statement to redirect user to login page before access is granted to other webforms
            if (Session["Username"] != null)
            {

            }
            else
            {
                Session["InvalidUse"] = "You must login to access the website";
                Response.Redirect("Login.aspx");
            }

        }

        protected void ticketlist_SelectedIndexChanged(object sender, EventArgs e)
        {
 // OUTER JOIN
            String sqlQuery = "Select inventoryItem.itemname, inventoryItem.itemdescription, inventoryItem.itemcost FROM inventoryItem LEFT OUTER JOIN service ON inventoryItem.serviceid = service.serviceid LEFT OUTER JOIN workflow ON workflow.serviceid = service.serviceid WHERE workflow.workflowid = '" + itemslist.SelectedValue.ToString() + "'";
            //connection to the db
            SqlConnection sqlconnect = new SqlConnection("Server=Localhost;Database=GreenValleyAuctions;Trusted_Connection=Yes;");

            SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlconnect);

            DataTable data = new DataTable();
            sqlAdapter.Fill(data);

            itemsgv.DataSource = data;
            itemsgv.DataBind();
            ItemNametext.Visible = true;
            ItemCosttext.Visible = true;
            ItemDescriptiontext.Visible = true;
            Itemname.Visible = true;
            Itemcost.Visible = true;
            Itemdescription.Visible = true;
            RequiredFieldValidator5.Visible = true;
            RequiredFieldValidator1.Visible = true;
            RequiredFieldValidator2.Visible = true;
        }

        protected void ShowTicketBtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlConnect = new SqlConnection("Server=Localhost;Database=GreenValleyAuctions;Trusted_Connection=Yes;"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Workflow.WorkflowID, Workflow.CustomerDate FROM Workflow, Service WHERE Service.ServiceID=Workflow.ServiceID AND Service.ServiceName='" + TypeDDL.SelectedValue + "' AND Workflow.CustomerID ='" + CustomerDDL.SelectedValue + "'"))

                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = sqlConnect;
                    sqlConnect.Open();
                    itemslist.DataSource = cmd.ExecuteReader();
                    itemslist.DataTextField = "CustomerDate";
                    itemslist.DataValueField = "WorkflowID";
                    itemslist.DataBind();
                    sqlConnect.Close();
                }
            }
        }

        protected void additems_Click(object sender, EventArgs e)
        {
            //inserting information into inventoryItem given the workflow and service table conection
            string workquery = "INSERT INTO [inventoryItem] (ItemName,ItemDescription,ItemCost,ServiceID) VALUES (@ItemName,@ItemDescription,@ItemCost,(SELECT Service.ServiceID FROM Service, Workflow WHERE Service.serviceid = workflow.serviceid AND workflow.workflowid = @Workflow))";

            SqlConnection sqlconnect = new SqlConnection("Server=Localhost;Database=GreenValleyAuctions;Trusted_Connection=Yes;");
            sqlconnect.Open();
            SqlCommand com = new SqlCommand(workquery, sqlconnect);
            string itemname = HttpUtility.HtmlEncode(ItemNametext.Text);
            com.Parameters.AddWithValue("ItemName", itemname);
            string itemcost = HttpUtility.HtmlEncode(ItemCosttext.Text);
            com.Parameters.AddWithValue("ItemCost", itemcost);
            string custitemdescription = HttpUtility.HtmlEncode(ItemDescriptiontext.Text);
            com.Parameters.AddWithValue("ItemDescription", custitemdescription);
            string wf = itemslist.SelectedValue.ToString();
            com.Parameters.AddWithValue("Workflow", wf);

            com.ExecuteNonQuery();
            sqlconnect.Close();
            AddBtn.Visible = true;
        }
    }
}