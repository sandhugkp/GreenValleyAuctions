using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using GreenValleyAuctions;

namespace GreenValleyAuctions
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            SqlConnection sc = new SqlConnection(" Server=Localhost;Database=AUTH;Trusted_Connection=Yes; ");

            sc.Open();

            SqlCommand createUser = new SqlCommand();
            createUser.Connection = sc;
            // INSERT USER RECORD
            createUser.CommandText = "INSERT INTO Employee (EmployeeName, Username) VALUES (@EmployeeName, @Username)";
            createUser.Parameters.Add(new SqlParameter("@EmployeeName", "Richard Small"));
            createUser.Parameters.Add(new SqlParameter("@Username", "rsmall@gmail.com"));
            createUser.ExecuteNonQuery();



            SqlCommand setPass = new SqlCommand();
            setPass.Connection = sc;
            // INSERT USER RECORD
            setPass.CommandText = "SET IDENTITY_INSERT EmployeePass ON INSERT INTO EmployeePass (UserID, Username, PasswordHash) VALUES ((select userid from Employee WHERE UserID = '4'), @Username, @Password)";
            setPass.Parameters.Add(new SqlParameter("@Username", "rsmall.com"));
            setPass.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword("test")));
            setPass.ExecuteNonQuery();


            sc.Close();



        }
    }
}
