using FormularioCadastro.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FormularioCadastro.Models
{
    public class PersonModel
    {
        string connectionString = @"Data Source=WILL-NOTE\SQLEXPRESS;Initial Catalog=UserRegistrationDB;Integrated Security=True";

        public void Add(PersonEntity person)
        {
            string sqlCmd = "INSERT INTO UserRegistration (FirstName, LastName, Contact, Gender, Address, UserName, PassWord)" +
               "VALUES (@firstname, @lastname, @contact, @gender, @address, @username, @password)";

            //string selectCommand = "SELECT * FROM UserRegistration where ((@LastName is null) OR (@LastName = LastName)) " +
            //    "                   and ((@FullName is null) OR )";


            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlCmd, connection);
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlCmd;
                cmd.Parameters.AddWithValue("@firstname", person.FirstName);
                cmd.Parameters.AddWithValue("@lastname", person.LastName);
                cmd.Parameters.AddWithValue("@contact", txtContact.Text);
                cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("@address", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);

                cmd.ExecuteNonQuery();
            }
        }
    }
}