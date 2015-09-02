using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace TestPaperEngine.Database
{
    public class DataAccess
    {

        // private static string Path = System.IO.Directory.GetParent(Application.StartupPath).ToString(); 
        public static readonly string connection = "Data Source=trusoft;Initial Catalog=TestPaperEngine;Integrated Security=true;";

    }
    public static class cc2
    {

        public static int newCommand_ExecuteNonQuery(string sql, SqlConnection ccn, SqlParameter[] parama = null, bool isStoredProcedure = false)
        {
            try
            {
                if (ccn.State == ConnectionState.Closed) { ccn.Open(); }
                SqlCommand cmd = new SqlCommand(sql, ccn);
                if (isStoredProcedure)
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                }
                if (parama != null)
                    cmd.Parameters.AddRange(parama);

                return cmd.ExecuteNonQuery();
            }
            catch { return -1; }
        }
        public static double newCommand_ExecuteScaler(string sql, SqlConnection ccn, SqlParameter[] parama = null, bool isStoredProcedure = false)
        {
            try
            {
                if (ccn.State == ConnectionState.Closed) { ccn.Open(); }
                SqlCommand cmd = new SqlCommand(sql, ccn);
                if (isStoredProcedure)
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                }
                if (parama != null)
                    cmd.Parameters.AddRange(parama);

                return Convert.ToDouble(cmd.ExecuteScalar());
            }
            catch { return 0; }
        }
        public static string newCommand_ExecuteScaler_string(string sql, SqlConnection ccn, SqlParameter[] parama = null, bool isStoredProcedure = false)
        {
            try
            {
                if (ccn.State == ConnectionState.Closed) { ccn.Open(); }
                SqlCommand cmd = new SqlCommand(sql, ccn);
                if (isStoredProcedure)
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                }
                if (parama != null)
                    cmd.Parameters.AddRange(parama);
                return cmd.ExecuteScalar().ToString();
            }
            catch { return ""; }
        }
        public static DataSet newCommand_Dataadapter(string sql, SqlConnection ccn, SqlParameter[] parama = null, bool isStoredProcedure = false)
        {
            DataSet dt = new DataSet();
            try
            {
                if (ccn.State == ConnectionState.Closed) { ccn.Open(); }
                SqlDataAdapter dap = new SqlDataAdapter(sql, ccn);
                if (isStoredProcedure)
                {
                    dap.SelectCommand.CommandType = CommandType.StoredProcedure;
                }
                if (parama != null)
                    dap.SelectCommand.Parameters.AddRange(parama);
                dap.Fill(dt);
                return dt;
            }
            catch { return dt; }
        }
        public static void newCommand_DELETE(string sql, SqlConnection ccn, SqlParameter[] parama = null, bool isStoredProcedure = false)
        {
            try
            {
                if (ccn.State == ConnectionState.Closed) { ccn.Open(); }
                SqlCommand cmd = new SqlCommand(sql, ccn);
                if (isStoredProcedure)
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                }
                if (parama != null)
                    cmd.Parameters.AddRange(parama);
                cmd.ExecuteNonQuery();
            }
            catch { }
        }

        public static bool newCommand_ExecuteScaler_bool(string SQL, SqlConnection con, SqlParameter[] parama = null, bool isStoredProcedure = false)
        {
            try
            {
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlCommand cmd = new SqlCommand(SQL, con);
                if (isStoredProcedure)
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                }
                if (parama != null)
                    cmd.Parameters.AddRange(parama);
                return Convert.ToBoolean(cmd.ExecuteScalar().ToString());
            }
            catch { return false; }
        }
    }
}
