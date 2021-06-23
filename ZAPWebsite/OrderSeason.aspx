<%@ Page Title="Ordering" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderSeason.aspx.cs" Inherits="ZAPWebsite.OrderSeason" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    

    <nav>
        <ul class="navbar">
            <li><a href="Default.aspx" class="navtabs">Forside</a></li>
            <li><a href="Booking.aspx" class="navtabs active">Booking</a></li>
            <li><a href="About.aspx" class="navtabs">Om os</a></li>
        </ul>
    </nav>
    
    <section class="order">
        
        <section>
                            
                            <a href="Booking.aspx"><img class="backImg" src="Pics/backArrow.png"/></a>
                            <asp:Button OnClick="buttonOrder_OnClick" ID="buttonOrder" CssClass="buttonOrder" runat="server" Text="Bestil" />
            <p id="price" class="PriceOrder"></p>
        
                        </section>
        
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
                
                <section class="input-date">
                    
                    <label for="winter">Vinter (1. Oktober -> 31. Marts)</label>
                    <input onclick="viewAddons();getPrice('season');" type="radio" id="winter" name="season" value="1" runat="server"/>
                    
                    <label for="spring">Forår (1. April -> 30. Juni)</label>
                    <input onclick="viewAddons();getPrice('season');" type="radio" id="spring" name="season" value="2" runat="server"/>
                    
                    <label for="summer">Sommer (1. April -> 30. September)</label>
                    <input onclick="viewAddons();getPrice('season');" type="radio" id="summer" name="season" value="3" runat="server"/>
                    
                    <label for="autumn">Efterår (15. August -> 31. Oktober)</label>
                    <input onclick="viewAddons();getPrice('season');" type="radio" id="autumn" name="season" value="4" runat="server"/>

                </section>

                <section class="input-counters" id="counters" style="display: none">

                    <p>Hvad vil du bo i?</p>

                    <label for="telt">Telt</label>
                    <input onclick="Hide('MainContent_bigPlace');Hide('labelBig')" type="radio" id="telt" name="type" value="telt" runat="server"/>
                    
                    <label for="campingvogn">Campingvogn</label>
                    <input onclick="ShowOrHide('MainContent_bigPlace');ShowOrHide('labelBig', 'block');" type="radio" id="campingvogn" name="type" value="campingvogn" runat="server"/>


                </section>
                
                <section class="input-addons" id="addons" style="display: none">

                    <label for="water">God udsigt til vandet</label>
                    <input onchange="getPrice('campingvogn');" type="checkbox" name="water" ID="waterView" runat="server"/>

                    <label for="big" id="labelBig" style="display: none">Store plads</label>
                    <input onchange="getPrice('campingvogn');" style="display: none" type="checkbox" name="big" ID="bigPlace" runat="server"/>
                    
                    

                </section>
                
            </form>
        </article>
    </section>
    
    

</asp:Content>
