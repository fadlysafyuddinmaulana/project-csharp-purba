<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="C2_2103040133._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        
        .shutterstock
        {
            text-align: center;
            font-size: 20px;
        }
        .style2
        {
            text-align: center;
            height: 167px;
        }
        .Cover
        {
            margin-bottom: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <h1 style="text-align: center; font-family: Times New Roman; margin-bottom:25px;">
            TOKO BUKU SEJAHTERA</h1>
        <asp:Image ID="Image3" class="Cover" ImageUrl="~/Images/wallpaperflare.com_wallpaper.jpg"
            Width="900px" Height="450px" runat="server" />
        <h1 style="text-align: center; font-family: Times New Roman;margin-bottom:25px">
            DAFTAR BUKU</h1>
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Image ID="Image1" ImageUrl="~/Images/BLK_5FASESS2022309675.jpg" Width="203px"
                        runat="server" />
                </td>
                <td class="style2">
                    <asp:Image ID="Image2" ImageUrl="~/Images/BLK_DKTGOBHSIK2022794821.jpg" Width="203px"
                        runat="server" />
                </td>
                <td class="style2">
                    <asp:Image ID="Image4" ImageUrl="~/Images/BLK_EFE2022870471.jpg" Width="203px" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Image ID="Image5" ImageUrl="~/Images/BLK_MHBPJB2022310327.jpg" Width="203px"
                        runat="server" />
                </td>
                <td class="style2">
                    <asp:Image ID="Image6" ImageUrl="~/Images/HCO_BOWER2018MTH11.jpeg" Width="203px"
                        runat="server" />
                </td>
                <td class="style2">
                    <asp:Image ID="Image7" ImageUrl="~/Images/ID_NO2019MTH0902.jpg" Width="203px" runat="server" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
