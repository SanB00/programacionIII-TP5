using System;

namespace TP5Grupo18
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Style", "IDE1006:Naming Styles", Justification = "<Pending>")]
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void btnEliminar_Click(object sender, EventArgs e) {
            int idSucursal;
            if (!int.TryParse(txtIdSucursal.Text.Trim(), out idSucursal) || idSucursal <= 0) {
                lblMensaje.Text = "Por favor ingrese una sucursal valida.";
                return;
            }
           
            string consultaSQL = "DELETE FROM Sucursal WHERE Id_Sucursal = " + idSucursal;
            int filasAfectadas = new Conexion().ejecutarTransaccion(consultaSQL);

            if (filasAfectadas == 0)
            {
                lblMensaje.Text = "La sucursal se ha eliminado con éxito";
                return;
            }


        }
    }
}