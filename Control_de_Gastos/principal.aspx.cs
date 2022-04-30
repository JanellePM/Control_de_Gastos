using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Control_de_Gastos
{
    public partial class principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lusuario.Text = "Bienvenido " + Clsusuario.Getcorreo() +" hoy es:"+DateTime.Today.ToString("d");
        }

        protected void Bagregar_Click(object sender, EventArgs e)
        {
            Sqltransacciones.Insert();
        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            Sqltransacciones.Delete();
        }

        protected void Bactualizar_Click(object sender, EventArgs e)
        {
            Sqltransacciones.Update();
        }

        protected void Bconsultar_Click(object sender, EventArgs e)
        {

        }
    }
}