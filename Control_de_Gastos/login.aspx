<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Control_de_Gastos.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
.button2 {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}


button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
        .auto-style1 {
            color: #FF0000;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Login Form</h2>


  <div class="imgcontainer">
    &nbsp;<asp:Image ID="Image1" runat="server" Height="364px" ImageUrl="~/imagenes/imagen.png" Width="718px" />
  </div>

  <div class="container">
    <label for="uname"><b>Usuario</b></label>
    
      <asp:TextBox ID="Tusuario" placeholder="Ingrese un usuario" required  runat="server"></asp:TextBox>

    <label for="psw"><b>Contraseña</b></label>
    
      <asp:TextBox ID="Tclave" placeholder="Digite contraseña" required runat="server" TextMode="Password"></asp:TextBox>
        
    
      <asp:Button ID="Bingresar" class="button2" runat="server" Text="Ingresar" OnClick="Bingresar_Click" />
    
  </div>

  <div class="container" style="background-color:#f1f1f1">

    
      <asp:Button ID="Bregistrar" class="cancelbtn" runat="server" Text="Registrar" OnClick="Bcancelar_Click" />
      

    <span class="psw">Forgot <a href="#">password?</a></span>
      <br />
      <br />
      <asp:Label ID="Imensaje" runat="server" BackColor="White" CssClass="auto-style1"></asp:Label>
      <br />
  </div>

        </div>
    </form>
</body>
</html>
