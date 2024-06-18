<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Add_Kategori.aspx.cs" Inherits="C2_2103040133.Add_Kategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <style>
            .button-page
            {
                margin-right: 10px;
            }
        </style>
        <asp:TextBox ID="TextBox1" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
        <table class="style1" width="950px">
            <tr>
                <td class="style1" width="150px">
                    Nama Kategori
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox>
                </td>
            </tr>
            <tr>
               <%-- <td width="250px">
                    <asp:Button ID="Insert" runat="server" class="button-page" OnClick="Insert_Click"
                        Text="Insert" />
                    <asp:Button class="button-page" ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
                    <asp:Button class="button-page" ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" />
                </td>--%>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id_Kategori" DataSourceID="SqlDataSource1" Width="937px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_Kategori" HeaderText="id_Kategori" 
                    InsertVisible="False" ReadOnly="True" SortExpression="id_Kategori" />
                <asp:BoundField DataField="Kategori" HeaderText="Kategori" 
                    SortExpression="Kategori" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db_toko_bukuConnectionString %>" 
            DeleteCommand="DELETE FROM [tb_kategori] WHERE [id_Kategori] = @id_Kategori" 
            InsertCommand="INSERT INTO [tb_kategori] ([Kategori]) VALUES (@Kategori)" 
            SelectCommand="SELECT * FROM [tb_kategori]" 
            UpdateCommand="UPDATE [tb_kategori] SET [Kategori] = @Kategori WHERE [id_Kategori] = @id_Kategori">
            <DeleteParameters>
                <asp:Parameter Name="id_Kategori" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Kategori" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Kategori" Type="String" />
                <asp:Parameter Name="id_Kategori" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <%-- <asp:GridView ID="GridView1" runat="server" Width="910px">
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
        </asp:GridView>--%>
    </asp:Panel>
</asp:Content>
