<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="Control_de_Gastos.principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 class="auto-style1">Sistema de control de gastos </h2>
            <p class="auto-style1">
                <asp:Label ID="lusuario" runat="server" ForeColor="#006600"></asp:Label>
            </p>
             <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CODIGO" DataSourceID="Sqltransacciones" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" InsertVisible="False" ReadOnly="True" SortExpression="CODIGO" />
                    <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" />
                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                    <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

             <asp:SqlDataSource ID="Sqltransacciones" runat="server" ConnectionString="<%$ ConnectionStrings:CONTROLGASTOSConnectionString %>" DeleteCommand="DELETE TRANSACCION WHERE CODIGO=@CODIGO" InsertCommand="INSERT INTO TRANSACCION (MONTO,TIPO,DESCRIPCION,FECHA)
VALUES (@monto, @tipo,@descripcion,@fecha)" UpdateCommand="UPDATE TRANSACCION SET MONTO = @MONTO WHERE CODIGO= @CODIGO" SelectCommand="SELECT*FROM TRANSACCION WHERE TIPO=@Tipo">
                 <DeleteParameters>
                     <asp:ControlParameter ControlID="TCODIGO" Name="CODIGO" PropertyName="Text" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:ControlParameter ControlID="Tmonto" Name="monto" PropertyName="Text" />
                     <asp:ControlParameter ControlID="Dtipo" Name="tipo" PropertyName="SelectedValue" />
                     <asp:ControlParameter ControlID="Tdescripcion" Name="descripcion" PropertyName="Text" />
                     <asp:ControlParameter ControlID="Tfecha" Name="fecha" PropertyName="Text" />
                 </InsertParameters>
                 <SelectParameters>
                     <asp:ControlParameter ControlID="Dtipo" Name="Tipo" PropertyName="SelectedValue" />
                 </SelectParameters>
                 <UpdateParameters>
                     <asp:ControlParameter ControlID="Tmonto" Name="MONTO" PropertyName="Text" />
                     <asp:ControlParameter ControlID="TCODIGO" Name="CODIGO" PropertyName="Text" />
                 </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            CODIGO: <asp:TextBox ID="TCODIGO" runat="server"></asp:TextBox>

             <br />
            <br />
            <asp:Label ID="Label" runat="server" Text="Tipo:"></asp:Label>
            <asp:DropDownList ID="Dtipo" runat="server">
                <asp:ListItem>Ingreso</asp:ListItem>
                <asp:ListItem>Gasto</asp:ListItem>
            </asp:DropDownList>

            <asp:Label ID="Label2" runat="server" Text="Descripcion:"></asp:Label>
            <asp:TextBox ID="Tdescripcion" runat="server" Width="348px"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Monto:"></asp:Label>
            <asp:TextBox ID="Tmonto" runat="server" Width="258px"></asp:TextBox>

            <br />
            <br />

            <asp:Label ID="Label4" runat="server" Text="Fecha:"></asp:Label>
            &nbsp;<asp:TextBox ID="Tfecha" runat="server" Height="43px" TextMode="DateTime" Width="199px"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="Bagregar" runat="server" Text="Agregar" BackColor="#CCCCFF" Font-Size="Large" OnClick="Bagregar_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Bborrar" runat="server" Text="Borrar" BackColor="#FFCCFF" Font-Size="Large" OnClick="Bborrar_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Bactualizar" runat="server" Text="Modificar" BackColor="#CCFFFF" Font-Size="Large" OnClick="Bactualizar_Click" />
            &nbsp;&nbsp;
             <asp:Button ID="Bconsultar" runat="server" Text="Consultar" BackColor="#FFFFCC" Font-Size="Large" OnClick="Bconsultar_Click" />
            

        </div>
    </form>
</body>
</html>
