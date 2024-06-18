<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Invoice_Page.aspx.cs" Inherits="C2_2103040133.Invoice_Page" %>

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
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3"
                        DataTextField="nama_customer" DataValueField="id_customer">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_toko_bukuConnectionString %>"
                        SelectCommand="SELECT * FROM [tb_customer]"></asp:SqlDataSource>
                    <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2"
                        DataTextField="nomor_buku" DataValueField="id_stok">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_toko_bukuConnectionString %>"
                        SelectCommand="SELECT tb_buku.nomor_buku , tb_buku.Judul, tb_stok.id_stok, tb_stok.nomor_buku AS Expr2, tb_stok.harga_buku FROM tb_buku INNER JOIN tb_stok ON tb_buku.nomor_buku = tb_stok.nomor_buku">
                    </asp:SqlDataSource>
                    <asp:Button ID="Get" runat="server" Text="Get" OnClick="Get_Click1" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Buku
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" autocomplete="off" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox7" runat="server" autocomplete="off" Visible="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Harga Buku
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" autocomplete="off"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Stok
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" autocomplete="off" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Total Pembayaran
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" autocomplete="off"></asp:TextBox>
                    <asp:Button ID="Solver" runat="server" OnClick="Solver_Click" Text="Solver" />
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
