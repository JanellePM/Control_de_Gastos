<%@ Page Title="" Language="C#" MasterPageFile="~/Menu2.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="Control_de_Gastos.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    usuarios
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="sqlusuarios1">
        <Columns>
            <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
            <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
            <asp:BoundField DataField="clave" HeaderText="clave" SortExpression="clave" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="sqlusuarios1" runat="server" ConnectionString="<%$ ConnectionStrings:CONTROLGASTOSConnectionString %>" DeleteCommand="Borrarusuarios" DeleteCommandType="StoredProcedure" InsertCommand="Agregarusuarios" InsertCommandType="StoredProcedure" SelectCommand="Listarusuarios" SelectCommandType="StoredProcedure" UpdateCommand="Actualizarusuarios" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:ControlParameter ControlID="Tcodigo" Name="codigo" PropertyName="Text" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="Tcorreo" Name="correo" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Tclave" Name="clave" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="Tcodigo" Name="codigo" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="Tcorreo" Name="correo" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Tclave" Name="clave" PropertyName="Text" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    Codigo:<asp:TextBox ID="Tcodigo" runat="server"></asp:TextBox>
    <br />
    Correo:&nbsp;
    <asp:TextBox ID="Tcorreo" runat="server"></asp:TextBox>
    <br />
    Clave:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Tclave" runat="server"></asp:TextBox>
    <br />
    <br />
    

    <asp:Button ID="Bagregar" class="button button1" runat="server" Height="57px" Text="Agregar" Width="121px" BackColor="#FFCC99" OnClick="Bagregar_Click" />
     &nbsp;&nbsp;
    <asp:Button ID="Bborrar" class="button button2" runat="server" Height="57px" Text="Borrar" Width="121px" BackColor="#CCFF99" OnClick="Bborrar_Click" />
     &nbsp;&nbsp;
    <asp:Button ID="Bmodificar" class="button button3" runat="server" Height="57px" Text="Modificar" Width="121px" BackColor="#CC99FF" OnClick="Bmodificar_Click" />
     &nbsp;&nbsp;
    <asp:Button ID="Bconsultar" class="button button5" runat="server" Height="57px" Text="Consultar" Width="121px" BackColor="#FFFF99" BorderColor="#CCCCCC" OnClick="Bconsultar_Click" />
   
</asp:Content>
