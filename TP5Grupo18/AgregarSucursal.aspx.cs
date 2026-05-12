using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace TP5Grupo18
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                cargarProvincias();
            }
        }
        private void cargarProvincias() {
            const string consultaSQL = "SELECT Id_Provincia, DescripcionProvincia FROM Provincia ORDER BY DescripcionProvincia";
            DataTable dataTable = new ConexionBBDD().obtenerTablaDeLaBaseDeDatos("SELECT * FROM Provincia");

            ddlProvincias.DataSource = dataReader;
            ddlProvincias.DataTextField = "DescripcionProvincia";
            ddlProvincias.DataValueField = "Id_Provincia";
            ddlProvincias.DataBind();
            ddlProvincias.Items.Insert(0, new ListItem("-- Seleccione --", "0"));
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