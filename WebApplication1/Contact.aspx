<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>
    </h2>
    <fieldset style="width:300px">
        <legend><b>Gender</b></legend>
        <asp:RadioButton ID="MaleRadioButton" Text="Male" runat="server" GroupName="GenderGroup" />
        <asp:RadioButton ID="FemaleRaidoButton" Text="Female" runat="server" GroupName="GenderGroup" />
        <asp:RadioButton ID="UnknownRadioButton" Text="Unknown" runat="server" GroupName="GenderGroup" />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </fieldset>
    
    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:test@gmail.com">test@gmail.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:test@gmail.com">test@gmail.com</a>
    </address>
</asp:Content>
