using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = null;
        SqlDataReader reader = null;
        SqlCommand cmd = null;
        string query = "";
        string conString = "ChilliesConnectionString";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace((string)Session["username"]))
            {
                Response.Redirect("Services.aspx");
            }
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings[conString].ConnectionString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string FirstName = txtFirst.Text;
            string LastName = txtLast.Text;
            string MobileNumber = txtMobile.Text;
            string EmailAddress = txtEmail.Text;
            string Gender = txtGender.Text;

            conn.Open();
            query = "INSERT INTO [Clients](FName, LName, MobileNumber, EmailAddress, Gender) VALUES(@FName, @LName, @MobileNumber, @EmailAddress, @Gender)";

            cmd = new SqlCommand(query, conn);


            cmd.Parameters.AddWithValue("@FName", FirstName);
            cmd.Parameters.AddWithValue("@LName", LastName);
            cmd.Parameters.AddWithValue("@MobileNumber", MobileNumber);
            cmd.Parameters.AddWithValue("@EmailAddress", EmailAddress);
            cmd.Parameters.AddWithValue("@Gender", Gender);


            cmd.ExecuteNonQuery();
            conn.Close();

            conn.Open();
            query = "SELECT FName FROM [Clients] WHERE FName=@getUser";
            cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@getUser", FirstName);
            reader = cmd.ExecuteReader();
            reader.Read();
            FirstName = reader.GetString(0);
            reader.Close();

            conn.Close();
            Response.Redirect("Clients.aspx");
        }
    }
}