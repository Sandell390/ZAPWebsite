<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="ZAPWebsite.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <nav >
        <ul class="navbar">
            <li><a href="Default.aspx" class="navtabs">Forside</a></li>
            <li><a href="Booking.aspx" class="navtabs active">Booking</a></li>
            <li><a href="About.aspx" class="navtabs">Om os</a></li>
        </ul>
    </nav>
    
    

    <section class="booking">
        <article >
            <h1>
                Hvad vil du bo i?
            </h1>
            
            <button type="button" onclick="Redirect('OrderHytte.aspx')">Hytte</button>
            <button type="button" onclick="Redirect('OrderCampingvogn.aspx')">Campingvogn</button>
            <button type="button" onclick="Redirect('OrderTelt.aspx')">Telt</button>
            <button type="button" onclick="Redirect('OrderSeason.aspx')">Sæsonplads</button>

        </article>
    </section>
    
    
    <script>
        function Redirect(link) {
            location.replace(link);
        }
    </script>
    
    <img src="Pics/bookingBackground.jpg" class="bg"/>

</asp:Content>
