<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5Grupo18.AgregarSucursal" MasterPageFile="Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">
                <h2>Agregar sucursal</h2>
            </td>
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
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">Nombre Sucursal:</td>
            <td class="colCampos">
                <asp:TextBox ID="txtNombre" runat="server" Width="201px"></asp:TextBox></td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">Descripción:</td>
            <td class="colCampos">
                <asp:TextBox ID="txtDescripcion" runat="server" Height="32px" Width="200px"></asp:TextBox>
            </td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">Provincia: </td>
            <td class="colCampos">
                <asp:DropDownList ID="ddlProvincias" runat="server">
                </asp:DropDownList></td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>

        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">Dirección:</td>
            <td class="colCampos">
                <asp:TextBox ID="txtDireccion" runat="server" Width="200px"></asp:TextBox></td>
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
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">&nbsp;</td>
            <td class="colCampos">
                <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" /></td>
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
        <tr>
            <td class="colBordes">&nbsp;</td>
            <td class="colEtiquetas">&nbsp;</td>
            <td class="colCampos"<asp:Label ID="lblMensaje" runat="server"></asp:Label></td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css"></style>
</asp:Content>

