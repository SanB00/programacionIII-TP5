using System;

namespace TP5Grupo18
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Style", "IDE1006:Naming Styles", Justification = "<Pending>")]
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void btnEliminar_Click(object sender, EventArgs e) {
            String strIdSucursal = Common.eliminarEspaciosDelTexto(txtIdSucursal.Text);
            string msgDeErrores = String.Empty;
            if (string.IsNullOrEmpty(strIdSucursal)) { msgDeErrores += "\n * Por favor completar el campo"; }
            if (!int.TryParse(txtIdSucursal.Text.Trim(), out int idSucursal) || idSucursal <= 0) {
                msgDeErrores += "\n * Por favor ingrese una sucursal válida.";
            }
            if (!Common.esUnNroValidoMayorACero(strIdSucursal)) { msgDeErrores += "\n * Por favor ingresar un número mayor a 0."; }

            if (!string.IsNullOrEmpty(msgDeErrores)) {
                Common.mostrarMensajeEnAlerta("Errores:" + msgDeErrores, this);
                return;
            }

            string consultaSQL = "DELETE FROM Sucursal WHERE Id_Sucursal = " + idSucursal;
            int filasAfectadas = new Conexion().ejecutarTransaccion(consultaSQL);

            if (filasAfectadas == 0) {
                lblMensaje.Text = "La sucursal se ha eliminado con éxito";
                return;
            }


        }
    }
}