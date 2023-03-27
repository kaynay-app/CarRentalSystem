using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace FYP_CarRentalSystem
{
    public class getConnectionfromDB
    {
        //making a connection to SQL server.
        //Creating a method that returns a connection, so that we don't keep creating it everytime we have to call it
        public static SqlConnection getSqlConnection() //Setting the method to SqlConnection because to connect to the database
        {
            //Opening the db connection
            SqlConnection conn = new SqlConnection();//Instance of SQL (Server)

            try// Catch and notify errors in connection
            {

                String constring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\sam\Documents\CarRentalManagementDB.mdf;Integrated Security=True;Connect Timeout=30";
                conn.ConnectionString = constring;//conn.ConnectionString that contains the complete code of the database above
                conn.Open();
            }//Catch and notify errors in connection
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return conn;
        }

        public static void CloseConnection(SqlConnection conn)//Close the connection event
        {
            try
            {
                conn.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }
    }
}