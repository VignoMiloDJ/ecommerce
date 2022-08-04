using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ECommerce2.ecommerceSoapClient c = new ECommerce2.ecommerceSoapClient();
        lit.Text = c.HelloWorld();
        ddl.DataSource = c.Tipi();
        ddl.DataTextField = "descrizione_Tipo";
        ddl.DataValueField = "cod_Tipo";
        ddl.DataBind();


    }


    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

}