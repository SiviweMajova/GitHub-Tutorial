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
    public partial class WebForm4 : System.Web.UI.Page
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
            string Name = txtName.Text;
            string TreatmentType = txtType.Text;
            string AvailabilityFor = txtAvail.Text;
            string Duration = txtDuration.Text;
            string RetailPrice = txtRPrice.Text;
            string SpecialPrice = txtSPrice.Text;

            conn.Open();
            query = "INSERT INTO [Services](Name, TreatmentType, AvailabilityFor, Duration, RetailPrice, SpecialPrice) VALUES(@Name, @TreatmentType, @AvailabilityFor, @Duration, @RetailPrice, @SpecialPrice)";

            cmd = new SqlCommand(query, conn);


            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@TreatmentType", TreatmentType);
            cmd.Parameters.AddWithValue("@AvailabilityFor", AvailabilityFor);
            cmd.Parameters.AddWithValue("@Duration", Duration);
            cmd.Parameters.AddWithValue("@RetailPrice", RetailPrice);
            cmd.Parameters.AddWithValue("@SpecialPrice", SpecialPrice);


            cmd.ExecuteNonQuery();
            conn.Close();

            conn.Open();
            query = "SELECT Name FROM [Services] WHERE Name=@getUser";
            cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@getUser", Name);
            reader = cmd.ExecuteReader();
            reader.Read();
            Name = reader.GetString(0);
            reader.Close();

            conn.Close();
            Response.Redirect("Services.aspx");
        }
    }
}