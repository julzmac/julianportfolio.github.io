<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Styles/Contactstylesheet.css" rel="stylesheet" />

    
    
    <div class="container">

        <%-- First name --%>
       <label for="fname"> First Name</label>
     <asp:TextBox ID="FName" runat="server" placeholder="Your first name"></asp:TextBox>

        <%-- Last name --%>
       <label for="lname">Last Name</label>
     <asp:TextBox ID="LName" runat="server" placeholder="Your last name"></asp:TextBox>

        <%-- Email address --%>
        <label for="email"> Email Address</label>
       <asp:TextBox ID="email" runat="server" placeholder="Your email address" MaxLength="80" Font-Size="30"/>

        
        <%-- Subject --%>
        <label for="subject">Subject</label>
  <asp:TextBox ID="subject" runat="server" placeholder="Subject"> </asp:TextBox>

        <%-- Message --%>
         <label for="message">Message</label>
<asp:TextBox ID="message" runat="server" placeholder="Write something.." style="height:200px" TextMode="MultiLine" ></asp:TextBox>
    
       
        <%-- Submit button --%>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

      <div>  
          <asp:Label ID="lblResult" runat="server"></asp:Label>

         </div>

    </div>

</asp:Content>
