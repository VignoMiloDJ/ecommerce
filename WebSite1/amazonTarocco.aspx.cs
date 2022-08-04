using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



        ECommerce2.ecommerceSoapClient c = new ECommerce2.ecommerceSoapClient();
       // ListItem l = new ListItem { Text = "Tutte le categorie", Value = 0.ToString() };

        ddl.DataSource = c.Tipi();
        ddl.DataTextField = "descrizione_Tipo";
        ddl.DataValueField = "cod_Tipo";
        ddl.DataBind();
        ddl.Items.Insert(0, new ListItem("Tutte le categorie"));



    }
}