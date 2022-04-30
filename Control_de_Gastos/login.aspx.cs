using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Control_de_Gastos
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bingresar_Click(object sender, EventArgs e)
        {
            Clsusuario.Setcorreo(Tusuario.Text);
            Clsusuario.Setclave(Tclave.Text);

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["CONTROLGASTOSConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select correo,clave from usuario where correo ='"+Clsusuario.Getcorreo() +"' and clave= '" +Clsusuario.Getclave()+ "'",conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                Response.Redirect("principal.aspx");
            }
            else
            {
                Imensaje.Text = "usuario o contraseña incorrecto";
            }
            conexion.Close();
        }

        protected void Bcancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}