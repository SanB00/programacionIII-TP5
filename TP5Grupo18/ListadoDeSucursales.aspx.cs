using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace TP5Grupo18
{
    public class ConexionBBDD
    {
        //RUTA BDSucursales
        // private const string cadenaConexion = @"Data Source=DESKTOP-RFDMNU2\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True;Encrypt=False;TrustServerCertificate=True";
        private const string cadenaConexion = @"Initial Catalog=BDSucursales;Data Source=(localdb)\MSSQLLocalDB;Integrated Security=True";

        public DataTable oobtenerTablaDeLaBaseDeDatos(string consultaSQL) {
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            SqlDataAdapter adapter = new SqlDataAdapter(consultaSQL, Conexion);
            DataTable tabla = new DataTable();

            adapter.Fill(tabla);
            return tabla;

        }

    }
    public partial class ListadoDeSucursales : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                cargarListaSucursales();
            }
        }

        private void cargarListaSucursales() {
            const string consultaSQL = "SELECT * FROM Sucursal";
            DataTable dataTable = new ConexionBBDD().oobtenerTablaDeLaBaseDeDatos(consultaSQL);
            gvSucursales.DataSource = dataTable;
            gvSucursales.DataBind();
        }
        private void cargarSucursalFiltrada() {
            string filtro = txtBusqueda.Text;
            if (string.IsNullOrEmpty(filtro)) {
                cargarListaSucursales();
                return;
            }
            string consultaSQL = "SELECT * FROM Sucursal WHERE Id_Sucursal = " + filtro;
            DataTable dataTale = new ConexionBBDD().oobtenerTablaDeLaBaseDeDatos(consultaSQL);
            gvSucursales.DataSource = dataTale;
            gvSucursales.DataBind();
            txtBusqueda.Text = "";
        }

        protected void btnFiltrar_Click(object sender, EventArgs e) {
            cargarSucursalFiltrada();

        }

        /*private void validarFiltro() {
            string strFiltro = Common.eliminarEspaciosDelTexto(txtFiltro.Text);
        }*/

    }
}