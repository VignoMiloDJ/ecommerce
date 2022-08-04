<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginAmazon.aspx.cs" Inherits="loginAmazon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login tarocco</title>
    <link href="assets/Mycss/stile1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="assets/img/imgAmazon/logoAmazonNero.png" style="width:300px;" />
            <table id="mainTable">
                <tr class="righe">
                    <td><b>Accedi</b></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="righe">
                    <td><b>Indirizzo e-mail o numero di cellulare</b></td>
                </tr>
                <tr class="righe">
                    <td>
                    <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
                    </td>
                </tr >
                <tr class="righe">
                    <td>
                        <asp:Button ID="btnContinua" runat="server" Text="Button" />
                    </td>
                </tr>
                <tr class="righe">
                    <td>
                        Accedendo al tuo account dichiari di aver letto e <br /> 
                        accetti le nostre <a href="">Condizioni generali di uso e vendita.</a><br /> 
                        Prendi visione della nostra <a href="">Informativa sulla privacy</a>,<br /> 
                        della nostra <a href="">Informativa sui Cookie</a> e della nostra <br /> 
                        <a href="">Informativa sulla Pubblicità definita in base agli <br /> 
                        interessi.</a>
                    </td>
                </tr>
                <tr><td><a>Hai bisogno di aiuto?</a></td></tr>
            </table>

            <table>
                <tr>
                    <td>Sei nuovo su Amazon?</td>
                </tr>
                    <tr>
                    <td><asp:Button ID="btnNuovo" runat="server" Text="Crea il tuo account Amazon" /></td>
                </tr>
            </table>
           <item style="display:felex; flex-direction:row; margin-left:10px;">
        <a href=""> Condizioni d'uso </a> 
        <a href=""> Informativa sulla privacy </a>
        <a href=""> Aiuto </a>
        <a href=""> Informativa sui Cookie </a>
        <a href=""> Informativa sulla Pubblicità definita in base agli interessi </a>
            </item>     
        </div>
    </form>
</body>
</html>
