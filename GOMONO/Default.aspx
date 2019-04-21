<%@ Page Language="C#" Inherits="GOMONO.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <meta content="utf-8" name="charset"/>
	<title>Se connecter | GOMONO</title>
</head>
<body>
    <div id="card"></div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
      <a class="navbar-brand" href="#"><img src="favicon.ico" width="40" height="40" style="margin-right: 15px"/>GOMONO</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarColor01">
        <!--<ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="Contacts.aspx">Contacts</a>
          </li>
          <<li class="nav-item active">
            <a class="nav-link" href="#">Contacts <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="About.aspx">&Agrave; Propos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Help.aspx">Aide</a>
          </li>
        </ul>-->
        <form class="form-inline my-2 my-lg-0" style="visibility:hidden">
           <ul class="navbar-nav mr-auto">
          <li class="nav-item active" style="pointer-events:none">
            <asp:HyperLink CssClass="nav-link" id="userprofile" runat="server">devinferno16@gmail.com <span class="sr-only">(current)</span></asp:HyperLink>
          </li>
          <li class="nav-item">
            <asp:HyperLink CssClass="nav-link" id="deconnexion" Style="cursor:pointer" href="#" runat="server">D&eacute;connexion</asp:HyperLink>
          </li>
        </ul>
        </form>
      </div>
</nav>
        <br />
    <br />
    <div class="container">
        <div class="bs-docs-section">
         <div class="row">
                    <div class="col-lg-12">
                        <div class="page-header">
                            <h1 id="forms">Se Connecter</h1>
                            <br />
                        </div>
                    </div>
                <div class="col-lg-4">
                    <div class="bs-component">
                                    <form runat="server" action="#" id="form2">
              <fieldset>
                <legend>Entrer les informations ci-dessous</legend><br />
                <div class="form-group">
                  <label for="exampleInputEmail1">Email / Utilisateur</label>
                  <asp:TextBox CssClass="form-control" id="exampleInputEmail1" TextMode="Email" runat="server" AutoCompleteType="None"/>
                  <div class="invalid-feedback"><asp:Label id="EmailError" runat="server">Email ou Utilisateur invalide !</asp:Label></div>
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Mot de passe</label>
                  <asp:TextBox Cssclass="form-control" id="exampleInputPassword1" TextMode="Password" runat="server"/>
                  <div class="invalid-feedback"><asp:Label id="passwordError" runat="server">Mot de passe invalide !</asp:Label></div>
                </div>
                <fieldset class="form-group">
                  <legend></legend>
                  <div class="form-check">
                    <label class="form-check-label">
                      <asp:CheckBox CssClass="form-check-input" id="checkbox1" Checked="false" runat="server"/>
                      Garder ma session ouverte ?
                    </label>
                  </div>
                </fieldset>
                <asp:Button CssClass="btn btn-success" id="connexion" Text="Connexion" runat="server" OnClick="connexion_Click"/>
              </fieldset>
            </form>
                                </div>
                            </div>
                  <div class="col-lg-6 offset-lg-1">
                        <div class="bs-component">
              <fieldset>
                <legend><h1>Bienvenue sur GOMONO !</h1></legend>
                <div class="form-group">
                  <h3>
                        &quot;La vie est 
                    <small class="text-muted"><i>encore plus simple...</i></small>&quot;
                    </h3>
                    <p class="lead">Envoyer et Recever votre colis en toute simplicit&eacute; et partout o&ugrave; vous &ecirc;tes</p>
                    <p><asp:Panel CssClass="alert alert-dismissible alert-success" id="panelOK" Visible="false" runat="server">
                        <button type="button" class="close" data-dismiss="alert">×</button>
                        <strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.
                    </asp:Panel></p>
                </div>
              </fieldset>
            </div>

                  </div>
                     </div>
                <div class="footer" style="border-top: 1px solid #ccc;margin-top: 20px;padding:20px 0px;">
                    <p>&copy; 2019 Copyright - GOMONO Web Application</p> 
                </div>
                </div>
                <form id="form1" runat="server">
                    <asp:Button id="button1" runat="server" Text="Click me!" CssClass="btn btn-primary btn-lg" Visible="false" OnClick="button1Clicked" />
                </form>
    </div>
</body>
</html>
