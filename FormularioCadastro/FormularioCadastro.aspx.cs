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
    public partial class FormularioCadastro : System.Web.UI.Page
    {
        string connectionString = @"Data Source=WILL-NOTE\SQLEXPRESS;Initial Catalog=UserRegistrationDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "" || txtPassword.Text == "")
            {
                lblMessage.Text = "Please fill all necessary filds!";
            }
            else if (txtPassword != txtConfirmPassword)
            {
                lblMessage.Text = "Password do not match!";
            }
            else
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    {
                        try
                        {
                            connection.Open();

                            SqlCommand cmd = new SqlCommand("insert into UserRegistration (firstname, lastname, contact, gender, address, username, password) value (@firstname, @lastname, @contact, @gender, @address, @username, @password)", connection);
                            cmd.Parameters.AddWithValue("@firstname", txtFirstname.Text);
                            cmd.Parameters.AddWithValue("@lastname", txtLastName.Text);
                            cmd.Parameters.AddWithValue("@contact", txtContact.Text);
                            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
                            cmd.Parameters.AddWithValue("@address", DropDownList1.SelectedValue);
                            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                            cmd.ExecuteNonQuery();
                            connection.Close();
                            Response.Redirect("Login.aspx");
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine(ex.Message);
                        }
                    }
                }
            }
        }
    }
}