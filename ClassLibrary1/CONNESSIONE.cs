using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;

// <summary>
/// Classe che aiuta a connettermi al db
/// </summary>
public class CONNESSIONE
{

    // Membri della classe
    public SqlConnection conn = new SqlConnection();
    public string query;

    public CONNESSIONE()
    {

        // setta stringa di connessione con db
        conn.ConnectionString = @"Data Source=LAPTOP-BMQ2VL9N\SQLEXPRESS;Initial Catalog=AMAZON;Integrated Security=True";
    }

    //@param command with set query(store procedure)
    //and parameters used for INSERT UPDATE DELETE
    public void EseguiSPcmdParam(SqlCommand cmd)
    {
        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;


        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    //@param command with set query(store procedure)
    // and parameters SELECT
    
    public DataTable EseguiSPselectParam(SqlCommand cmd)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter DA = new SqlDataAdapter();

        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;


        DA.SelectCommand = cmd;
        DA.Fill(dt);

        return dt;
    }




}