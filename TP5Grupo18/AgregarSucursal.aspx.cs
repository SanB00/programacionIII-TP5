using System;

namespace TP5Grupo18
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void btnAceptar_Click(object sender, EventArgs e) {

        }

        private void LimpiarControles() {
            txtNombre.Text = "";
            txtDescripcion.Text = "";
            txtDireccion.Text = "";
            if (ddlProvincias.Items.Count > 0) {
                ddlProvincias.SelectedIndex = 0;
            }
        }
    }
}