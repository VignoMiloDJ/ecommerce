using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{

    public class PRODOTTI
    {
        int ID;
        int codiceTipoProdotto;
        string descrizione;
        decimal prezzo;
        byte[] immagine;
        string formatoImmagine;
        public DataTable Select()
        {


            return new DataTable();
        }

    }
}
