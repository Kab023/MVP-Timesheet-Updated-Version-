using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace MVP_Timesheet
{
    public partial class CreateEmployee : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\mssqllocaldb;Initial Catalog=Timesheet;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static string SaveEmployee(object data)
        {
            try
            {
                // Here, you would typically process the data and insert it into the database
                // For demonstration purposes, let's just return the received data as a string
                return "Data Received: " + data.ToString();
            }
            catch
            {
                // Handle exceptions appropriately
                return "Error: " + ex.Message;
            }
        }
    }
}