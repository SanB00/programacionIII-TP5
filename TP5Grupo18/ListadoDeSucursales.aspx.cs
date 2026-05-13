using System;
using System.Data;
using System.Linq;

namespace TP5Grupo18
{
    public partial class ListadoDeSucursales : System.Web.UI.Page
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Style", "IDE1006:Naming Styles", Justification = "<Pending>")]
        protected void Page_Load(object sender, EventArgs e) {
            cargarListaSucursales();
        }

        private void cargarListaSucursales() {
            const string consultaSQL = "SELECT * FROM Sucursal";
            DataTable dataTable = new Conexion().ejecutarConsulta(consultaSQL);

            // Save to ViewState (Requires DataTable to be Serializable)
            ViewState["DatosSucursales"] = dataTable;

            gvSucursales.DataSource = dataTable;
            gvSucursales.DataBind();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e) {
            string nombreSucursal = txtNombreSucursal.Text.Trim();
            DataTable dataTable = ViewState["DatosSucursales"] as DataTable;
            if (dataTable == null) {
                gvSucursales.DataSource = null;
                gvSucursales.DataBind();
                return;
            }
            var filtro = from row in dataTable.AsEnumerable()
                         where row.Field<string>("NombreSucursal").StartsWith(nombreSucursal, StringComparison.OrdinalIgnoreCase)
                         select row;
            gvSucursales.DataSource = filtro.Any() ? filtro.CopyToDataTable() : null;
            gvSucursales.DataBind();
        }
    }
}