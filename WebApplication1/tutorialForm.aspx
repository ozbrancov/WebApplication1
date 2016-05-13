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
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <br />

        <br />
        <asp:Button ID="ButtonWithJS" runat="server" Text="ButtonJS" OnClick="Button2_Click" OnClientClick='return confirm("are you sure you want to click?")' />
        <br />

        <br />
        <asp:Button ID="ButtonCommandEvent" runat="server" Text="ButtonCommandEvent" OnClick="ButtonCommand_Click" OnCommand="ButtonCommandEvent_Command" CommandName="number 1"/>
        <br />
        <asp:Button ID="ButtonCommandEvent2" runat="server" Text="ButtonCommandEvent2" OnClick="ButtonCommand_Click" OnCommand="ButtonCommandEvent_Command" CommandName="number 2" />
        <asp:Label ID="OutputLabel" runat="server"></asp:Label>

        <br /><br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://coastpropertyguide.com" 
            Target="_blank" ToolTip="Best Web Site!">CoastPropertyGuide</asp:HyperLink>

        <br /><br />
        <asp:DropDownList ID="DropDownList1" runat="server">
<%--            <asp:ListItem Selected="True" Value="1">Male</asp:ListItem>
            <asp:ListItem Value="2">Female</asp:ListItem>--%>
        </asp:DropDownList>
        <br /><br />

        <asp:DropDownList ID="DropdownList2" runat="server">

        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
