using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Control_de_Gastos
{
    public partial class usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bagregar_Click(object sender, EventArgs e)
        {
            //SqlConnection conn = new SqlConnection ("Data Source = Data Source=LAPTOP-29ODD46M\\SQLEXPRESS02;Initial Catalog=CONTROLGASTOS;Integrated Security=True");
            //SqlCommand cmd = new SqlConnection ("Agregar Usuarios", conn);
            //cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlusuarios1.Insert();
            Response.Redirect("usuarios.aspx");
        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            sqlusuarios1.Delete();
        }

        protected void Bmodificar_Click(object sender, EventArgs e)
        {
            sqlusuarios1.Update();
        }

        protected void Bconsultar_Click(object sender, EventArgs e)
        {

        }
    }
}