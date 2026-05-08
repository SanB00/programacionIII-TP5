using System;
using System.Data;
using System.Web.UI.WebControls;

namespace TP5Grupo18
{
    public partial class ListadoDeSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {

        }

        private void cargarListaSucursales() {
            const string consultaSQL = "SELECT * FROM Sucursal";
            DataTable tablaTemas = new ConexionBBDD().obtenerTablaDeLaBaseDeDatos(consultaSQL);

        }
    }
}