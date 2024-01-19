using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MVP_Timesheet
{
    public partial class ViewEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }
        private void BindData()
        {
            // Fetch data from the database and bind it to the repeater
            DataTable dt = new DataTable();
            rptData.DataSource = dt;
            rptData.DataBind();
        }
        private DataTable GetDataFromDatabase()
        {
            // Replace this with your database connection logic
            string connectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=Timesheet;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand("SELECT id, Employee, Role, Task FROM Timesheet", connection))
                {
                    DataTable dt = new DataTable();
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        adapter.Fill(dt);
                    }
                    return dt;
                }
            }
        }

    }
}