using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace TP5Grupo18
{
    public class ConexionBBDD
    {
        public string obtenerCadenaDeConexion(string nombreBBDD) {
            const string webconfigAttribute = "dbBase";
            try {
                string dbBaseWebconfig = ConfigurationManager.ConnectionStrings[webconfigAttribute].ConnectionString;
                return $"{dbBaseWebconfig};Initial Catalog = {nombreBBDD}";
            }
            catch (Exception e) {
                throw new Exception($"Error al obtener la cadena de conexión '{webconfigAttribute}'. Revisar WEB.CONFIG: \n\n" + e.Message);
            }
        }
        public DataTable obtenerTablaDeLaBaseDeDatos(string consultaSQL, string cadenaConexion = null, SqlParameter[] parametros = null) {
            string connectionString = string.IsNullOrEmpty(cadenaConexion) ? this.obtenerCadenaDeConexion("BDSucursales") : cadenaConexion;
            DataTable dataTable = new DataTable();

            // El bloque 'using' asegura que la conexión se cierre SIEMPRE, incluso si hay error
            using (SqlConnection sqlConnection = new SqlConnection(connectionString)) {
                try {
                    SqlCommand sqlCommand = new SqlCommand(consultaSQL, sqlConnection);
                    if (parametros != null) {
                        sqlCommand.Parameters.AddRange(parametros);
                    }
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                    sqlConnection.Open();
                    sqlDataAdapter.Fill(dataTable);
                }
                catch (Exception e) {
                    if ((e is SqlException ex)) {
                        switch (ex.Number) {
                            // Connection & String Errors
                            case -1: // Connection timeout
                            case 2:  // Connection pool empty or server not found
                            case 53: // Network-related/instance-specific error (Server not found)
                            case 40: // Could not open connection to server
                            case 18456: // Login failed for user (Wrong credentials in string)
                                throw new Exception($"Connection Error: Revisar WEB.CONFIG Check your connection string or server status. Details: \n{e.Message} ");
                            default:
                                throw new Exception($"SQL Error ({ex.Number}): {ex.Message}");
                        }
                    }
                    else
                        throw new Exception($"Error al consultar la base de datos: \n{e.Message}");
                }
            }
            return dataTable;
        }
    }

}