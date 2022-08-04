<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <script>

        $(function () {
            $(".Hello").click(function () {



                $.ajax({
                    // Destination
                    //://localhost:51957/ecommerce.asmx/HelloWorld

                    url: "Default.aspx/HelloWorld",

                    // Build querystring
                    //data: {
                    //    n: name,
                    //    d: date,
                    //    i: oraInizio,
                    //    f: oraFine,
                    //    c: campo
                    //},

                    type: "POST",
                    datatype: "text"
                })
                    .done(function () {
                        $(".show").append(this).Text;
                    })

            })
        });


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Literal ID="lit" runat="server"></asp:Literal>
            <asp:DropDownList ID="ddl" runat="server"></asp:DropDownList>


        </div>
    </form>
            <button class="Hello">Hello</button>
            <label class="show"></label>
</body>
</html>
