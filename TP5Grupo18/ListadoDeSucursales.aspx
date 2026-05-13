<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ListadoDeSucursales.aspx.cs" Inherits="TP5Grupo18.ListadoDeSucursales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">
                <h2>Listado De Sucursales</h2>
            </td>
            <td class="colCampos"></td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">
                Nombre de Sucursal
            </td>
            <td class="colCampos">
                <asp:TextBox ID="txtNombreSucursal" runat="server"/>
                <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
            </td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">&nbsp;</td>
            <td class="colCampos">
                <asp:GridView ID="gvSucursales" runat="server"></asp:GridView>
            </td>
            <td class="colCampos">&nbsp;</td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
