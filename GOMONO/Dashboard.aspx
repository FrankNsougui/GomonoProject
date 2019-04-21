<%@ Page Language="C#" Inherits="GOMONO.Dashboard" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <meta content="utf-8" name="charset"/>
    <title>Boite de r&eacute;ception | GOMONO</title>
</head>
<body>
     <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
      <a class="navbar-brand" href="#"><img src="favicon.ico" width="40" height="40" style="margin-right: 15px"/>GOMONO</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarColor01">
        <ul class="navbar-nav mr-auto" style="visibility:hidden">
          <li class="nav-item">
            <a class="nav-link" href="Contacts.aspx">Contacts</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Contacts <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="About.aspx">&Agrave; Propos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Help.aspx">Aide</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0" id="form1">
           <ul class="navbar-nav mr-auto">
          <li class="nav-item active" style="pointer-events:none">
            <asp:HyperLink CssClass="nav-link" id="userprofile" runat="server" OnLoad="userprofile_onLoad">devinferno16@gmail.com <span class="sr-only">(current)</span></asp:HyperLink>
          </li>
          <li class="nav-item">
            <asp:HyperLink CssClass="nav-link" id="deconnexion" Style="cursor:pointer" href="../" runat="server">D&eacute;connexion</asp:HyperLink>
          </li>
        </ul>
        </form>
      </div>
</nav>
</body>
</html>

