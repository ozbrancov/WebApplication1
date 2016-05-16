<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TutorialForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="Select Continent" Value="-1"></asp:ListItem>
            <asp:ListItem Text="Asia" Value="1"></asp:ListItem>
            <asp:ListItem Text="Europe" Value="2"></asp:ListItem>
            <asp:ListItem Text="Africa" Value="3"></asp:ListItem>
            <asp:ListItem Text="North America" Value="4"></asp:ListItem>
            <asp:ListItem Text="South America" Value="5"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <br /><br />
        <asp:DropDownList ID="DropDownListSQL" runat="server"></asp:DropDownList>
    <br /><br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="59px" RepeatColumns="2" RepeatDirection="Horizontal" Width="446px">
            <asp:ListItem Text="Diploma" Value="1"></asp:ListItem>
            <asp:ListItem Text="Graduate" Value="2"></asp:ListItem>
            <asp:ListItem Text="Post Graduate" Value="3"></asp:ListItem>
            <asp:ListItem Text="Doctorate" Value="4"></asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="SelectAll" runat="server" Text="Select All" OnClick="SelectAll_Click"/>
        <asp:Button ID="DeselectAll" runat="server" Text="DeSelect All" OnClick="Button3_Click" />
    <br /><br />

    </div>
    </form>

</body>
</html>

