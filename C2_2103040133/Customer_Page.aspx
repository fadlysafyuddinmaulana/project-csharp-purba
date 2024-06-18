<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Customer_Page.aspx.cs" Inherits="C2_2103040133.Customer_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <style>
            .button-page
            {
                margin-left: 10px;
            }
        </style>
        <table class="style1" width="950px">
            <asp:TextBox ID="TextBox1" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
            <tr>
                <td class="style2">
                    Nama Pelanggan
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" autocomplete="off"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    No. Telp
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Alamat
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="50px" autocomplete="off"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;
                </td>
                <td>
                    <asp:Button class="button-page" ID="Insert" runat="server" Text="Insert" OnClick="Insert_Click" />
                    <asp:Button class="button-page" ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
                    <asp:Button class="button-page" ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" Width="914px" CellPadding="4" ForeColor="#333333"
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"
                            AutoPostBack="True"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>
