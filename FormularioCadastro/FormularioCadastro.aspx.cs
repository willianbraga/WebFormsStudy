using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using FormularioCadastro.Entities;
using FormularioCadastro.Models;

namespace FormularioCadastro
{
    public partial class FormularioCadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "" || txtPassword.Text == string.Empty)
            {
                lblMessage.Text = "Please fill all necessary filds!";
                return;
            }
            else if (txtPassword.Text != txtConfirmPassword.Text)
            {
                lblMessage.Text = "Password do not match!";
                return;
            }

            var person = new PersonEntity();
            person.LastName = txtLastName.Text;

            var model = new PersonModel();
            model.Add(person);
           
            Response.Redirect("Login.aspx");
        }
    }
}