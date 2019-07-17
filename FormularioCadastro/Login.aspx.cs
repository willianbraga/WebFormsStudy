using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace FormularioCadastro
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source=WILL-NOTE\SQLEXPRESS;Initial Catalog=UserRegistrationDB;Integrated Security=True"))
            {
                connection.Open();
                string query = "SELECT COUNT(1) FROM UserRegistration WHERE username=@username AND password=@password";
                SqlCommand sqlCmd = new SqlCommand(query, connection);
                sqlCmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count ==1)
                {
                    Session["username"] = txtUsername.Text.Trim();
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    lblError.Visible = true;
                }
            }
        }

        protected void btnSign_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormularioCadastro.aspx");
        }
    }
}