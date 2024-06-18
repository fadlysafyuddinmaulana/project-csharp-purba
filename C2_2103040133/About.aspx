<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="C2_2103040133.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <style>
        .Content
        {
            color: Black;
            font-family: Calibri;
        }
    </style>
    <h2>
        Toko Buku Sejahtera
    </h2>
    <div class="Content">
        <p>
            Alamat: Jln.nangka RT/RW 05/04 no.25 Kec. Kembaran Kab.Banyumas
        </p>
        <p>
            No. Telp:0823xxxxxxxxxx</p>
        <p>
            Anda dapat menemukan <a href="https://goo.gl/maps/jdeMdiQxLc55W8v68">disini</a>
            Jika anda ingin menentukan jalannya sendiri anda klik/pencet <a href="httphttps://www.google.com/maps/dir//Nasgok+Abang+Jalan,+Jl.+Nangka,+Dusun+III,+Dukuhwaluh,+Kec.+Kembaran,+Kabupaten+Banyumas,+Jawa+Tengah+53182/@-7.4145523,109.2710869,20z/data=!4m9!4m8!1m0!1m5!1m1!1s0x2e655ec80a22798f:0x153b174d242212d6!2m2!1d109.2713879!2d-7.4145517!3e0s://goo.gl/maps/jdeMdiQxLc55W8v68">disini</a>
        </p>
        <asp:Image ID="Image1" ImageUrl="~/Images/Screenshot 2022-06-21 101318.png" Width="400px"
                        runat="server" />
    </div>
</asp:Content>
