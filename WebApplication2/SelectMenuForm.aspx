<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectMenuForm.aspx.cs" Inherits="WebApplication2.SelectMenuForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-1.12.0.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
    <link href="jquery-ui.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $('#selectMenu').selectmenu({
                width: 200,
                select: function (event , ui) {
                    alert('Label = '+ ui.item.label + ' Value = '+ ui.item.value);
                }
            });
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <select id="selectMenu">
            <asp:Repeater ID="repeaterCountries" runat="server">
                <ItemTemplate>
                    <optgroup label="<%#Eval("Name") %>">
                        <asp:Repeater ID="repeaterCities" runat="server"
                                      DataSource='<%# Eval("Cities")%>'>
                            <ItemTemplate>
                                <option value="<%#Eval("Id") %>">
                                    <%#Eval("Name") %>
                                </option>
                            </ItemTemplate>
                        </asp:Repeater>
                    </optgroup>
                </ItemTemplate>
            </asp:Repeater>
        </select>
    <div>
    </div>
    </form>
</body>
</html>
