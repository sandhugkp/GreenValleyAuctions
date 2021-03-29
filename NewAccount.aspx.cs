using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace GreenValleyAuctions
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CreateAccountBtn_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnect = new SqlConnection(" Server=Localhost;Database=GreenValleyAuctions;Trusted_Connection=Yes; ");
            sqlConnect.Open();
            string sqlquery = "INSERT INTO [InitialContact] (CustomerName, ContactMethod, DescriptionOfNeeds, AdditionalNotes, CustomerEmail, CustomerAddress, CustomerPhone) VALUES (@CustomerName,@ContactMethod,@DescriptionOfNeeds,@AdditionalNotes,@CustomerEmail,@CustomerAddress,@CustomerPhone)";
            
            SqlCommand cmd = new SqlCommand(sqlquery, sqlConnect);

            string customerName = HttpUtility.HtmlEncode(NameTxt.Text);
            cmd.Parameters.AddWithValue("CustomerName", customerName);

            string email = HttpUtility.HtmlEncode(EmailTxt.Text);
            cmd.Parameters.AddWithValue("CustomerEmail", email);

            string address = HttpUtility.HtmlEncode(txtCurrentAddress.Text);
            cmd.Parameters.AddWithValue("CustomerAddress", address);

            string phoneNum = HttpUtility.HtmlEncode(txtPhone.Text);
            cmd.Parameters.AddWithValue("CustomerPhone", phoneNum);

            string DescriptionOfNeeds = HttpUtility.HtmlEncode(txtDescriptionOfNeeds.Text);
            cmd.Parameters.AddWithValue("DescriptionOfNeeds", DescriptionOfNeeds);

            string AdditionalNotes = HttpUtility.HtmlEncode(txtAdditionalNotes.Text);
            cmd.Parameters.AddWithValue("AdditionalNotes", AdditionalNotes);

            string ContactMethod = HttpUtility.HtmlEncode(txtContactMethod.Text);
            cmd.Parameters.AddWithValue("ContactMethod", ContactMethod);

            string ContactDate = HttpUtility.HtmlEncode(txtContactDate.Text);
            cmd.Parameters.AddWithValue("ContactDate", ContactDate);

            string Password = HttpUtility.HtmlEncode(txtPassword.Text);
            cmd.Parameters.AddWithValue("Password", Password);

            cmd.ExecuteNonQuery();
            sqlConnect.Close();

            //Insert into AUTH table 
            if (NameTxt.Text != "" && txtPassword.Text != "" && EmailTxt.Text != "") // all fields must be filled out
            {
                // COMMIT VALUES
                try
                {
                    SqlConnection sc = new SqlConnection(" Server=Localhost;Database=AUTH;Trusted_Connection=Yes; ");

                    sc.Open();

                    SqlCommand createUser = new SqlCommand();
                    createUser.Connection = sc;
                    // INSERT USER RECORD
                    createUser.CommandText = "INSERT INTO Customer (CustomerName, Username) VALUES (@CustomerName, @Username)";
                    createUser.Parameters.Add(new SqlParameter("@CustomerName", HttpUtility.HtmlEncode(NameTxt.Text)));
                    createUser.Parameters.Add(new SqlParameter("@Username", HttpUtility.HtmlEncode(EmailTxt.Text)));
                    createUser.ExecuteNonQuery();

                    SqlCommand setPass = new SqlCommand();
                    setPass.Connection = sc;

                    // INSERT PASSWORD RECORD AND CONNECT TO USER
                    setPass.CommandText = "INSERT INTO Pass (UserID, Username, PasswordHash) VALUES ((select max(userid) from Customer), @Username, @Password)";
                    setPass.Parameters.Add(new SqlParameter("@Username", HttpUtility.HtmlEncode(EmailTxt.Text)));
                    setPass.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword(HttpUtility.HtmlEncode(txtPassword.Text)))); // hash entered password
                    setPass.ExecuteNonQuery();

                    sc.Close();

                    NameTxt.Enabled = false;
                    EmailTxt.Enabled = false;
                    txtPassword.Enabled = false;
                    txtCurrentAddress.Enabled = false;
                    txtAdditionalNotes.Enabled = false;
                    txtContactDate.Enabled = false;
                    txtContactMethod.Enabled = false;
                    txtDescriptionOfNeeds.Enabled = false;
                    txtPhone.Enabled = false;
                    CreateAccountBtn.Enabled = false;
                    
                    HomeBtn.Visible = true;
                }
                catch
                {
                    //lblStatus.Text = "Database Error - User not committed.";
                }
            }
            else
                lblStatus.Text = "Fill all fields.";
        }

        protected void HomeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerLogin.aspx");
        }
    }
}
