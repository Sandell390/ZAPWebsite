<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ZAPWebsite._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <section class="sectionHeader">
        <header class="header">
                    
                    
                   
            <section class="headerBox">
                <h1 class="headerText">ZAP Beach Camping</h1>
            </section>
                    
                    
                    
                    
                   
        </header>
                
        <nav >
            <ul class="navbar">
                <li><a href="Default.aspx" class="navtabs active">Forside</a></li>
                <li><a href="Booking.aspx" class="navtabs">Booking</a></li>
                <li><a href="About.aspx" class="navtabs">Om os</a></li>
            </ul>
        </nav>
    

    <section class="welcome">
        <article >
            <h1 >
                Velkommen
            </h1>
    
            <p >
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, 
                ac blandit elit tincidunt id. Sed rhoncus, tortor sed eleifend tristique, tortor mauris molestie elit, et lacinia ipsum quam nec dui. Quisque nec 
                mauris sit amet elit iaculis pretium sit amet quis magna. Aenean velit odio, elementum in tempus ut, vehicula eu diam. Pellentesque rhoncus aliquam 
                mattis. Ut vulputate eros sed felis sodales nec vulputate justo hendrerit. Vivamus varius pretium ligula, a aliquam odio euismod sit amet. Quisque 
                laoreet sem sit amet orci ullamcorper at ultricies metus viverra. Pellentesque arcu mauris, malesuada quis ornare accumsan, blandit sed diam.
            </p>
        
        
            <a href="Booking.aspx"><span>Book nu! </span></a>
        </article>
    </section>
    
    <section class="frontPics">
        <article>
            <h2>
                Billeder
            </h2>
            
            <img  src="Pics/frontPagePic1.jpg" alt="Pic1"/>
            <img  src="Pics/frontPagePic2.jpg" alt="Pic2"/>

        </article>
    </section>
    
    </section>
    
   

</asp:Content>
