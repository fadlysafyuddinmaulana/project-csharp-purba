<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Master.aspx.cs" Inherits="C2_2103040133.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            text-align:center;
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td>
                <a href="Add_Master.aspx">Tambah Buku</a>
            </td>
            <td>
                <a href="Add_Kategori.aspx">Kategori</a>
            </td>
            <td>
                <a href="Add_Jenis.aspx">Jenis Buku</a>
            </td>
            <td>
                <a href="Invoice_Page.aspx">Pemesanan</a>
            </td>
            <td>
                <a href="Stok_Page.aspx">Stok Buku</a>
            </td>
            <td>
                <a href="Customer_Page.aspx">Data Pelanggan</a>
            </td>
        </tr>
    </table>
</asp:Content>
