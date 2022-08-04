<%@ Page Language="C#" AutoEventWireup="true" CodeFile="amazonTarocco.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Amazon tarocco</title>
    <link rel="icon" type="image/x-icon" href="assets/img/download.png" />  
    <!-- Fogli di stile -->
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,400italic' rel='stylesheet' type='text/css' />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="assets/js/modernizr.custom.js"></script>
    <script type="text/javascript" src="assets/js/respond.min.js"></script>
    <script type="text/javascript" src="https://kit.fontawesome.com/bab53baba6.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <link href="assets/Mycss/stile1.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">

        <%--navigation bar--%>
        <nav class="navbar navbar-expand-lg bg-dark"">
            <div class="container-fluid" style="height:4.5vh;">

                <%--icon--%>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <ul class="navbar-nav me-auto mb-2 mb-lg-0"  style="display:flex; align-items:center; ">

                        <%--primo elemento della nav--%>
                        <li style="padding:5px; padding-left:0.8vh;margin-right:2vh;" >
                            <div style=" margin-top:1vh;">
                                <img alt="logo Amazon" src="assets/img/amazonLogo.png" width="100px;"/>
                            </div>
                            </li>
                        <li>
                            <span id="nav-global-location-data-modal-action" class="a-declarative nav-progressive-attribute">
                                <a id="nav-global-location-popover-link" class="nav-link" tabindex="0" style=" color:white;">
                                    <div class="nav-sprite nav-progressive-attribute" id="nav-packard-glow-loc-icon"></div>
                                    <div style="font-size:14px; padding-right:1vh; margin-left:2vh; " id="glow-ingress-block">
                                        <span>Ciao
                                            <br />
                                            <b>Scegli il tuo indirizzo</b>
                                        </span>
                                    </div>
                                </a>
                            </span></li>

                        <%--dropdown e search bar--%>
                        <li class="nav-item" style="padding:5px; font-size:12px;">
                            <div class="input-group mb-3" style="width:124vh; margin-top:1.5vh; margin-left:2vh;">
                               <%-- <button style="font-family:inherit; background-color:#efefef; font-size:12px; color:#262626;" type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
                                    Tutte le categorie
                                </button>--%>
                                <asp:DropDownList style="font-family:inherit; background-color:#efefef; font-size:12px; color:#262626;" CssClass="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false"  ID="ddl" runat="server">
                                <Items>
                                     <asp:ListItem Text="Select" Value="" />
                                </Items>
                                    
                                    </asp:DropDownList>
                                                                           
                                
                                <%-- <ul class="dropdown-menu" >
                                    <li><a class="dropdown-item" href="#">Tutte le categorie</a></li>
                                    <li><a class="dropdown-item" href="#">Alexa</a></li>
                                    <li><a class="dropdown-item" href="#">Moda</a></li>
                                    <li><a class="dropdown-item" href="#">Sport</a></li>
                                </ul>--%>
                                <input type="text" class="form-control" aria-label="Text input with segmented dropdown button" />
                                <button style=" color:#333333; background-color:#f4a460;" type="button" class="btn btn-outline-secondary">
                                    <i class='fas fa-search' style='font-size: 24px;'></i>
                                </button>
                            </div>
                        </li>
                        </ul >
                    </div>
                        <div style="">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0"  style="display:flex; align-items:center; ">
                        <%--secondo elemento della nav bar--%>
                        <li class="nav-item" style=" padding-right:1vh; padding-left:2vh; margin-left:1vh;">
                                <li class="nav-item dropdown" style="font-size:13px;">
                                    <a style=" color:white;" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Ciao, Accedi
                                        <br />
                                        <b>Account e liste</b>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-dark" >
                                        <li><a class="dropdown-item" href="loginAmazon.aspx">login</a></li>
                                        <li><a class="dropdown-item" href="#">Another action</a></li>
                                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                                    </ul>
                                </li>
                        </li>
                        <%--terzo elemento della nav bar--%>
                        <li class="nav-item" style="font-size:13px; padding-right:1vh; ">
                            <a class="nav-link" style=" color:white;">
                                Resi
                                <br />
                                <b>e ordini</b>
                            </a>
                        </li>
                        <%--quarto elemento della nav bar--%>
                        <li class="nav-item"style=" font-size:13px; ">
                            <a class="nav-link" style="color:white;">
                                <i class='fas fa-shopping-cart' style='font-size:26px'></i>
                                <b>Carrello</b>
                            </a>
                        </li>
                    </ul>
                    </div>
                </div>
        </nav>
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" style="height:20vh; width:155vh; margin-left:20.5vh; position:relative;">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="assets/img/imgAmazon/casaecucina.jpg" class="d-block w-100" alt="prima slide">
    </div>
    <div class="carousel-item">
      <img src="assets/img/imgAmazon/echo.jpg" class="d-block w-100" alt="seconda slide">
    </div>
    <div class="carousel-item">
      <img src="assets/img/imgAmazon/immagineBlu.jpg" class="d-block w-100" alt="terza slide">
    </div>
    <div class="carousel-item">
      <img src="assets/img/imgAmazon/kndleTablet.jpg" class="d-block w-100" alt="quarta slide">
    </div>
       <div class="carousel-item">
      <img src="assets/img/imgAmazon/ole.jpg" class="d-block w-100" alt="quinta slide">
    </div>
       <div class="carousel-item">
      <img src="assets/img/imgAmazon/Pacco.jpg" class="d-block w-100" alt="sesta slide">
    </div>
          <div class="card" style="width: 18rem;">
  <img src="assets/img/imgAmazon/vr.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
                <div class="card" style="width: 18rem;">
  <img src="assets/img/imgAmazon/msi.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
                <div class="card" style="width: 18rem;">
  <img src="assets/img/imgAmazon/scuola.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
                <div class="card" style="width: 18rem;">
  <img src="assets/img/imgAmazon/pc.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
                <div class="card" style="width: 18rem;">
  <img src="assets/img/imgAmazon/pencil-1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
                <div class="card" style="width: 18rem;">
  <img src="assets/img/imgAmazon/rosa.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
      </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
        
</div>
    </form>
</body>
</html>
