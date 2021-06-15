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
        <article>
            <form action="" method="post">
                
                
                <section class="input-text">
                    <label for="Name">Navn</label>
                    <input type="text" maxlength="64"  name="Name" />
                
                    <label for="Telnr">Telefon nummer</label>
                    <input type="text" maxlength="64"  name="Telnr"/>
                
                    <label for="Email">Email</label>
                    <input type="text" maxlength="64"  name="Email"/>
                
                    <label for="Address">Address</label>
                    <input type="text" maxlength="64"  name="Address"/>
                </section>

                <section class="input-counters">

                    <label for="person">Personer</label>
                    <input type="number" max="20" name="person" value="1" min="0"/>
                    
                    <p>Hvad vil du bo i?</p>

                    <label for="telt">Telt</label>
                    <input type="radio" id="telt" name="type" value="telt"/>
                    
                    <label for="campingvogn">Campingvogn</label>
                    <input type="radio" id="campingvogn" name="type" value="campingvogn"/>


                </section>
                
                <section class="input-addons">
                    
                    <label for="morgenA">Morgenkomplet (Voksen)</label>
                    <input type="checkbox" name="morgenA"/>
                    <input type="number" name="morgenA" max="10" value="0" min="0"/>
                    
                    <label for="morgenK">Morgenkomplet (Børn)</label>
                    <input type="checkbox" name="morgenK"/>
                    <input type="number" name="morgenK" max="10" value="0" min="0"/>
                    
                    <label for="bike">Cykelleje</label>
                    <input type="checkbox" name="bike"/>
                    <input type="number" name="bike" max="10" value="0" min="0"/>
                    
                    <label for="waterlandA">Adgang til badeland (Voksen)</label>
                    <input type="checkbox" name="waterlandA"/>
                    <input type="number" name="waterlandA" max="10" value="0" min="0"/>
                    
                    <label for="waterlandK">Adgang til badeland (Børn)</label>
                    <input type="checkbox" name="waterlandK"/>
                    <input type="number" name="waterlandK" max="10" value="0" min="0"/>
                    
                    <label for="big">Store plads</label>
                    <input type="checkbox" name="big"/>

                </section>
                
                <section class="input-date">
                    
                    <label for="winter">Vinter (1. Oktober -> 31. Marts)</label>
                    <input type="radio" id="winter" name="season" value="winter"/>
                    
                    <label for="spring">Forår (1. April -> 30. Juni)</label>
                    <input type="radio" id="spring" name="season" value="spring"/>
                    
                    <label for="summer">Sommer (1. April -> 30. September)</label>
                    <input type="radio" id="summer" name="season" value="summer"/>
                    
                    <label for="autumn">Efterår (15. August -> 31. Oktober)</label>
                    <input type="radio" id="autumn" name="season" value="autumn"/>

                </section>
                
                <section>
                    
                    <a href="Booking.aspx"><img class="backImg" src="Pics/backArrow.png"/></a>
                    <button type="button" onclick="" class="buttonOrder">Bestil</button>
                    

                </section>

            </form>
        </article>
    </section>


</asp:Content>
