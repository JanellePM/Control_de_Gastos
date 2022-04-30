using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Control_de_Gastos
{
    public partial class Registro : System.Web.UI.Page
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
            SqlCommand comando = new SqlCommand("insert into usuario values ('" + Clsusuario.Getcorreo() + "','" + Clsusuario.Getclave() + "'" + "')", conexion);
            comando.ExecuteNonQuery();
            if (Registro.Read())
            {
                Response.Redirect("principal.aspx");
            }
            else
            {
                //Imensaje.Text = "usuario o contraseña incorrecto";
            }
            conexion.Close();
            
        }
    }
}