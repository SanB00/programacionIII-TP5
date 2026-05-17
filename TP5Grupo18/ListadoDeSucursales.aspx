<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ListadoDeSucursales.aspx.cs" Inherits="TP5Grupo18.ListadoDeSucursales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas"></td>
            <td class="colCampos">
                <h2>Listado De Sucursales</h2>
            </td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas"></td>
           
            <td class="colCampos">Busqueda Ingrese Id busqueda: 
                <asp:TextBox ID="txtBusqueda" runat="server" Width="215px"></asp:TextBox>
                <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" />
            </td>
            <td class="colBordes">
                <asp:Label ID="lblError" runat="server" Text="No existe la sucursal" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">&nbsp;</td>
            <td class="colCampos">&nbsp; </td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">&nbsp;</td>
            <td class="colCampos">
                <asp:GridView ID="gvSucursales" runat="server"></asp:GridView>
            </td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
