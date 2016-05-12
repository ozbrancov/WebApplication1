<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tutorialForm.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <fieldset style="width:350px">
            <legend><b>Education</b></legend>
            <asp:CheckBox ID="GraduateCheckBox" Text="Graduate" runat="server" />
            <asp:CheckBox ID="PostGraduateCheckBox" Text="Post Graduate" runat="server" />
            <asp:CheckBox ID="DoctorateCheckBox" Text="Doctorate" runat="server" />
        </fieldset>&nbsp
        <br /><br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <br /><br />

        <br /><br />
        <asp:Button ID="ButtonWithJS" runat="server" Text="ButtonJS" OnClick="Button2_Click" OnClientClick='return confirm("are you sure you want to click?")' />
        <br /><br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://coastpropertyguide.com" 
            Target="_blank" ToolTip="Best Web Site!">CoastPropertyGuide</asp:HyperLink>
    </div>
    </form>
</body>
</html>
