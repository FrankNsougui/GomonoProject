using System;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Threading.Tasks;

namespace GOMONO
{

    public partial class Default : System.Web.UI.Page
    {
		MySqlConnection connection = new MySqlConnection("Server=localhost;Database=gomono;User ID=root;Password=frank1999");

		string currentLogin = "";
		string currentPassword = "";

        public void button1Clicked(object sender, EventArgs args)
        {
			button1.Text = "You clicked me";
        }

		public void connexion_Click(object sender, EventArgs args){
			if (exampleInputEmail1.Text == "" && exampleInputPassword1.Text == "")
            {
                exampleInputEmail1.CssClass = "form-control is-invalid";
				exampleInputPassword1.CssClass = "form-control is-invalid";
				passwordError.Text = "Mot de passe invalide !";
				EmailError.Text = "Email ou Utilisateur invalide !";
            }
            if (exampleInputEmail1.Text == "" && exampleInputPassword1.Text != "")
            {
                exampleInputEmail1.CssClass = "form-control is-invalid";
				EmailError.Text = "Email ou Utilisateur invalide !";
				exampleInputPassword1.CssClass = "form-control";
            }
            if (exampleInputEmail1.Text != "" && exampleInputPassword1.Text == "")
            {
                exampleInputEmail1.CssClass = "form-control";
				exampleInputPassword1.CssClass = "form-control is-invalid";
				passwordError.Text = "Mot de passe invalide !";
            }
            if (exampleInputPassword1.Text.Length < 6)
            {
				exampleInputPassword1.CssClass = "form-control is-invalid";
				passwordError.Text = "Le mot de passe doit contenir au moins 6 caract&egrave;res !";
            }
            else
            {
				exampleInputPassword1.CssClass = "form-control";
				currentLogin = exampleInputEmail1.Text;
				currentPassword = exampleInputPassword1.Text;
				connexionServer();
            }
		}

		async void connexionServer()
		{
			await Task.Delay(0);
			if (connection.State == System.Data.ConnectionState.Closed)
				connection.Open();
			try
			{
				MySqlCommand cmd = new MySqlCommand("select * from connexion where login = '" + exampleInputEmail1.Text + "' and password = '" +exampleInputPassword1.Text + "'", connection);
				int cpt = 0;
				int i = 0;
				MySqlDataReader dr = cmd.ExecuteReader();
				while (dr.Read()){
					cpt++;
					i = int.Parse(dr.GetValue(0).ToString());
				}
				dr.Close();
				if (cpt <= 0){
					exampleInputEmail1.Text = currentLogin;
					exampleInputPassword1.Text = currentPassword;
					exampleInputEmail1.CssClass = "form-control is-invalid";
					exampleInputPassword1.CssClass = "form-control is-invalid";
                    passwordError.Text = "Mot de passe incorrect !";
					EmailError.Text = "Login incorrect";
				}
				else{
					Response.Redirect("Dashboard.aspx?Oid=" + i);
				}
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.Message);
			}
		}
    }
}
