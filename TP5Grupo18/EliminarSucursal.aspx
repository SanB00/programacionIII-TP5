<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5Grupo18.EliminarSucursal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas"></td>
            <td class="colCampos">
                <h2>Eliminar Sucursal</h2>
            </td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">&nbsp;</td>
            <td class="colCampos">&nbsp; </td>
            <td class="colValidacion">&nbsp; </td>
            <td class="colBordes">&nbsp;</td>
        </tr>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">Ingrese el ID de sucursal: </td>
            <td class="colCampos">
                <asp:TextBox ID="txtIdSucursal" runat="server" />&nbsp;
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
            </td>
            <td class="colValidacion">
                <asp:Label ID="lblMensaje" runat="server"></asp:Label></td>
            <td class="colBordes">&nbsp;</td>
        </tr>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">&nbsp;</td>
            <td class="colCampos">&nbsp;</td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">&nbsp;</td>
            <td class="colCampos">&nbsp;</td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
