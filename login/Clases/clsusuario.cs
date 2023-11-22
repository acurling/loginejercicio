using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Permissions;
using System.Web;

namespace login.Clases
{
    public class clsusuario
    {
        private static string clave;
        private static string usuario;
        
        public clsusuario(string Clave, string Usuario) // iniciar las variable
        {
            clave = Clave;
            usuario = Usuario;
        }

        public int MyProperty { get; set; }

        private static string nombre;

       



        // getter    mostrar los atributos ------ funcion -- return
        // setter    asignar valor a los atributos -- void 

        public static string Getclave()
        {
            return clave;
        }

        public static string Getusuario()
        {
            return usuario;
        }

        public static string Getnombre()
        {
            return nombre;
        }
        public void SetClave(string contrasena)
        {
            clave = contrasena;
        }

        public void Setusuario(string Usuario)
        {
            usuario = Usuario;
        }

        public void Setnombre(string Nombre)
        {
            nombre = Nombre;
        }

        public static int ValidarLogin()
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("VALIDARUSUARIO", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Correo", usuario));
                    cmd.Parameters.Add(new SqlParameter("@Clave", clave));

                    retorno = cmd.ExecuteNonQuery();
                    using (SqlDataReader lectura = cmd.ExecuteReader())
                    {
                        if (lectura.Read())
                        {
                            retorno = 1;
                            nombre =lectura[2].ToString();

                        }
                        else
                        {
                            retorno = -1;
                        }

                    }


                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }

            return retorno;
        }
    }
}