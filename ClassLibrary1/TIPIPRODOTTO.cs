using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{

    // <summary>
    /// Rappresenta tipi prodotti
    /// </summary>
    public class TIPIPRODOTTO
    {
        // seleziona tutti  iprodotti da tabtipiproditto
        public DataTable Select()
        {
            CONNESSIONE c = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "TIPIPRODOTTI_SELECTALL";
            return c.EseguiSPselectParam(cmd);
        }

    }

}
