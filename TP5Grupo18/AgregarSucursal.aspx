<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5Grupo18.AgregarSucursal" MasterPageFile="Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">
                <h2>Agregar sucursal</h2>
            </td>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2"></td>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">Nombre Sucursal:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtNombre" runat="server" Width="201px"></asp:TextBox>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">Descripcion:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtDescripcion" runat="server" Height="32px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">Provincia:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddlProvincias" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">Direccion:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtDireccion" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2"></td>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 10%;
            height: 100%;
        }
        .auto-style2 {
            width: 20%;
            text-align: right;
            font-weight: bold;
            height: 100%;
        }
        .auto-style3 {
            width: 20%;
            text-align: center;
            height: 100%;
        }
        .auto-style4 {
            width: 35%;
            text-align: left;
            height: 100%;
        }
    </style>
</asp:Content>

