using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.DynamicData;
using System.Web.UI.WebControls;

namespace TP5Grupo18
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int idSucursal;

            if (!int.TryParse(tbIDsucursal.Text.Trim(), out idSucursal) || idSucursal <=0)
            {
                lblMensaje.Text = "Por favor ingrese una sucursal valida.";
                return;
            }
        }
    }
}