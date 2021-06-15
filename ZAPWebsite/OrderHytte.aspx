﻿<%@ Page Title="Ordering" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderHytte.aspx.cs" Inherits="ZAPWebsite.OrderHytte" %>
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

                    <label for="adult">Voksen</label>
                    <input type="number" max="10" name="adult" value="1" min="0"/>
                    
                    <label for="kid">Børn</label>
                    <input type="number" max="10" name="kid" value="0" min="0"/>
                    
                    <label for="dog">Hunde</label>
                    <input type="number" max="10" name="dog" value="0" min="0"/>

                </section>
                
                <section class="input-addons">
                    
                    <label for="morgenA">Morgenkomplet (Voksen)</label>
                    <input type="checkbox" name="morgenA"/>
                    
                    <label for="morgenK">Morgenkomplet (Børn)</label>
                    <input type="checkbox" name="morgenK"/>
                    
                    <label for="bike">Cykelleje</label>
                    <input type="checkbox" name="bike"/>
                    
                    <label for="waterlandA">Adgang til badeland (Voksen)</label>
                    <input type="checkbox" name="waterlandA"/>
                    
                    <label for="waterlandK">Adgang til badeland (Børn)</label>
                    <input type="checkbox" name="waterlandK"/>
                    
                    <label for="endClean">Slutrengøring</label>
                    <input type="checkbox" name="endClean"/>
                    
                    <label for="bed">Sengelinned</label>
                    <input type="checkbox" name="bed"/>
                    
                    <label for="luksus">Luksus Hytte</label>
                    <input type="checkbox" name="luksus"/>

                </section>
                
                <section class="input-date">
                    
                    <label for="startDate">Start Dato</label>
                    <input type="date"  name="startDate"/>
                    
                    <label for="endDate">Slut Dato</label>
                    <input type="date"  name="endDate"/>

                </section>
                
                <section>
                    
                    <a href="Booking.aspx"><img class="backImg" src="Pics/backArrow.png"/></a>
                    <button type="button" onclick="" class="buttonOrder">Bestil</button>
                    

                </section>

            </form>
        </article>
    </section>


</asp:Content>