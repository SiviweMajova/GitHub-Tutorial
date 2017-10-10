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
    public partial class WebForm3 : System.Web.UI.Page
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
            string RetailPrice = txtRetail.Text;
            string OnHand = txtOnHand.Text;
            string DateUpdated = txtDate.Text;
            string Category = txtCategory.Text;

            conn.Open();
            query = "INSERT INTO [InventoryA](Name, RetailPrice, OnHand, DateUpdated, Category) VALUES(@Name, @RetailPrice, @OnHand, @DateUpdated, @Category)";

            cmd = new SqlCommand(query, conn);


            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@RetailPrice", RetailPrice);
            cmd.Parameters.AddWithValue("@OnHand", OnHand);
            cmd.Parameters.AddWithValue("@DateUpdated", DateUpdated);
            cmd.Parameters.AddWithValue("@Category", Category);


            cmd.ExecuteNonQuery();
            conn.Close();

            conn.Open();
            query = "SELECT Name FROM [InventoryA] WHERE Name=@getUser";
            cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@getUser", Name);
            reader = cmd.ExecuteReader();
            reader.Read();
            Name = reader.GetString(0);
            reader.Close();

            conn.Close();
            Response.Redirect("Inventory.aspx");
        }
    }
}