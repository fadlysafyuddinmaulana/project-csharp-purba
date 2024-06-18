<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Add_Jenis.aspx.cs" Inherits="C2_2103040133.Add_Jenis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .button-page
        {
            margin-right: 10px;
        }
    </style>
    <asp:Panel ID="Panel1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
        <table class="style1" width="950px">
            <tr>
                <td class="style1" width="150px">
                    Nama Jenis
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="250px">
                    <asp:Button ID="Insert" runat="server" class="button-page" OnClick="Insert_Click"
                        Text="Insert" />
                    <asp:Button class="button-page" ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
                    <asp:Button class="button-page" ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" Width="910px">
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
