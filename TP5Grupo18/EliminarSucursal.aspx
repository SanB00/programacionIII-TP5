<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5Grupo18.EliminarSucursal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 16%;
        }
        .auto-style2 {
            width: 18%;
            text-align: right;
            font-weight: bold;
        }
        .auto-style3 {
            width: 16%;
            height: 100%;
        }
        .auto-style4 {
            width: 18%;
            text-align: right;
            font-weight: bold;
            height: 100%;
        }
        .auto-style5 {
            width: 20%;
            text-align: center;
            height: 100%;
        }
        .auto-style6 {
            width: 35%;
            text-align: left;
            height: 100%;
        }
        .auto-style7 {
            width: 10%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td class="auto-style1">
                <h2 style="width: 191px">Eliminar sucursal</h2>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="colCampos">&nbsp;</td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblidSucursal" runat="server" Text="Ingrese el ID de sucursal: "></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="tbIDsucursal" runat="server" Width="216px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="colCampos">&nbsp;</td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="colCampos">&nbsp;</td>
            <td class="colValidacion">&nbsp;</td>
            <td class="colBordes">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
