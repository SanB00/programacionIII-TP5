using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace TP5Grupo18
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Style", "IDE1006:Naming Styles", Justification = "<Pending>")]
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                cargarProvincias();
            }
        }
        private void cargarProvincias() {
            const string consultaSQL = "SELECT Id_Provincia, DescripcionProvincia FROM Provincia ORDER BY DescripcionProvincia";
            DataTable dataTable = new Conexion().ejecutarConsulta(consultaSQL);

            ddlProvincias.Items.Clear();
            ddlProvincias.DataSource = dataTable;
            ddlProvincias.DataTextField = "DescripcionProvincia";
            ddlProvincias.DataValueField = "Id_Provincia";
            ddlProvincias.DataBind();
            ddlProvincias.Items.Insert(0, new ListItem("-- Seleccione --", "0"));
        }

        private void limpiarControles() {
            txtNombre.Text = "";
            txtDescripcion.Text = "";
            txtDireccion.Text = "";
            if (ddlProvincias.Items.Count > 0) {
                ddlProvincias.SelectedIndex = 0;
            }
        }
        private string FormatearEntrada(string texto) {
            if (string.IsNullOrWhiteSpace(texto)) return "";


            string limpio = texto.Trim();
            if (limpio.Length > 1)
                return char.ToUpper(limpio[0]) + limpio.Substring(1);

            return limpio.ToUpper();
        }

        protected void btnAceptar_Click(object sender, EventArgs e) {
            // Validación
            if (txtNombre.Text.Trim() == "" ||
                txtDescripcion.Text.Trim() == "" ||
                txtDireccion.Text.Trim() == "" ||
                ddlProvincias.SelectedValue == "0") {
                lblMensaje.Text = "Debe completar todos los campos.";
                return;
            }

            string nombre = FormatearEntrada(txtNombre.Text);
            string descripcion = FormatearEntrada(txtDescripcion.Text);
            string direccion = FormatearEntrada(txtDireccion.Text);

            string consultaSQL = "INSERT INTO Sucursal " +
                                 "(NombreSucursal, DescripcionSucursal, DireccionSucursal, Id_ProvinciaSucursal) " +
                                 "VALUES ('" +
                                 nombre + "', '" +
                                 descripcion + "', '" +
                                 direccion + "', " +
                                 ddlProvincias.SelectedValue + ")";

            Conexion conexion = new Conexion();

            int filas = conexion.ejecutarTransaccion(consultaSQL);

            if (filas > 0) {
                lblMensaje.Text = "La sucursal se ha agregado con éxito";
                LimpiarControles();
            }
            else {
                lblMensaje.Text = "Error al agregar la sucursal.";
            }
        }
    }
}