using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace TP5Grupo18
{
    public class Conexion
    {
        //cadenaParaEntrega
        
        //private const string cadenaConexion = @"Data Source=localhost\\sqlexpress; Initial Catalog=BDSucursales;Integrated Security=True";
        //franco
        private const string cadenaConexion = @"localhost\sqlexpress;Initial Catalog=BDSucursales;Integrated Security=True;Encrypt=True;Trust Server Certificate=True";
        //Lautaro
        //private const string cadenaConexion = @"Data Source=localhost;Initial Catalog=BDSucursales;Integrated Security=True";


        public int ejecutarTransaccion(string consultaSQL)
        {
            SqlConnection sqlConnection = new SqlConnection(cadenaConexion);
            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand(consultaSQL, sqlConnection);

            int filasAfectadas = sqlCommand.ExecuteNonQuery(); /// INSERT, UPDATE, DELETE

            sqlConnection.Close();

            return filasAfectadas;

        }
    }
}