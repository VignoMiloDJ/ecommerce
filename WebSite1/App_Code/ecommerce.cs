using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using ClassLibrary1;

/// <summary>
/// Summary description for ecommerce
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class ecommerce : System.Web.Services.WebService
{

    public ecommerce()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    [WebMethod]
    public DataTable Tipi()
    {
        TIPIPRODOTTO t = new TIPIPRODOTTO();
        DataTable res = t.Select();
        res.TableName = "tipi";
        return res;
    }



}
