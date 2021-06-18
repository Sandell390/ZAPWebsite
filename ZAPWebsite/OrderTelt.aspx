<%@ Page Title="Ordering" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderTelt.aspx.cs" Inherits="ZAPWebsite.OrderTelt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <nav>
        <ul class="navbar">
            <li><a href="Default.aspx" class="navtabs">Forside</a></li>
            <li><a href="Booking.aspx" class="navtabs active">Booking</a></li>
            <li><a href="About.aspx" class="navtabs">Om os</a></li>
        </ul>
    </nav>
    
    <section class="order">
        <article>
            <form action="" method="post">
                
                
                 <section class="input-text">
                    <label for="Name">Navn</label>
                    <input type="text" maxlength="64"  name="Name" ID="name" runat="server"/>
                
                    <label for="Telnr">Telefon nummer</label>
                    <input type="text" maxlength="64"  name="Telnr" ID="telefonNr" runat="server"/>
                
                    <label for="Email">Email</label>
                    <input type="text" maxlength="64"  name="Email" ID="email" runat="server"/>
                
                    <label for="Address">Address</label>
                    <input type="text" maxlength="64"  name="Address" ID="Address" runat="server"/>
                </section>

                <section class="input-counters">

                    <label for="adult">Voksen</label>
                    <input type="number" max="10" name="adult" value="1" min="0" ID="adult" runat="server"/>
                    
                    <label for="kid">Børn</label>
                    <input type="number" max="10" name="kid" value="0" min="0" ID="kid" runat="server"/>
                    
                    <label for="dog">Hunde</label>
                    <input type="number" max="10" name="dog" value="0" min="0" ID="dog" runat="server"/>

                </section>
                
                <section class="input-addons">
                    
                    <label for="morgenA">Morgenkomplet (Voksen)</label>
                    <input type="checkbox" name="morgenA" onclick="ShowOrHide('MainContent_morgenA')"/>
                    <input style="display: none" type="number" name="morgenA" max="10" value="0" min="0" ID="morgenA" runat="server"/>
                    
                    <label for="morgenK">Morgenkomplet (Børn)</label>
                    <input type="checkbox" name="morgenK" onclick="ShowOrHide('MainContent_morgenK')" />
                    <input style="display: none" type="number" name="morgenK" max="10" value="0" min="0" ID="morgenK" runat="server"/>
                    
                    <label for="bike">Cykelleje</label>
                    <input type="checkbox" name="bike" onclick="ShowOrHide('MainContent_bike')"/>
                    <input style="display: none" type="number" name="bike" max="10" value="0" min="0" ID="bike" runat="server"/>
                    
                    <label for="waterlandA">Adgang til badeland (Voksen)</label>
                    <input type="checkbox" name="waterlandA" onclick="ShowOrHide('MainContent_waterlandA')"/>
                    <input style="display: none" type="number" name="waterlandA" max="10" value="0" min="0" ID="waterlandA" runat="server"/>
                    
                    <label for="waterlandK">Adgang til badeland (Børn)</label>
                    <input type="checkbox" name="waterlandK" onclick="ShowOrHide('MainContent_waterlandK')"/>
                    <input style="display: none" type="number" name="waterlandK" max="10" value="0" min="0" ID="waterlandK" runat="server"/>
                    
                    <label for="water">God udsigt til vandet</label>
                    <input type="checkbox" name="water" ID="waterView" runat="server"/>

                </section>
                
                <section class="input-date">
                    
                    <label for="startDate">Start Dato</label>
                    <input type="date"  name="startDate" ID="startDate" runat="server"/>
                    
                    <label for="endDate">Slut Dato</label>
                    <input type="date"  name="endDate" ID="endDate" runat="server"/>

                </section>
                
                <section>
                    
                    <a href="Booking.aspx"><img class="backImg" src="Pics/backArrow.png"/></a>
                    <asp:Button OnClick="buttonOrder_OnClick" ID="buttonOrder" CssClass="buttonOrder" runat="server" Text="Bestil" />
                    

                </section>

            </form>
        </article>
    </section>
    

</asp:Content>
