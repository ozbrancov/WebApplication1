<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
    <link href="jquery-ui.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                url: 'MenuHandler.ashx',
                method: 'get',
                dataType: 'json',
                success: function (data) {
                    buildMenu($('#menu'), data);
                    $('#menu').menu();
                }
            });

            function buildMenu(parent, items) {
                $.each(items, function () {
                    var li = $('<li>' + this.MenuText + '</li>');
                    if (!this.Active) {
                        li.addClass('ui-state-disabled');
                    }

                    li.appendTo(parent);
                    if (this.List && this.List.length > 0) {
                        var ul = $('<ul></ul>');
                        ul.appendTo(li);
                        buildMenu(ul, this.List);
                    }
                });
            }
            $('#slectMenu').selectmenu()
        });
    </script>
</head>
<body>
    <div style="width:150px">
        <ul id="menu"></ul>
    </div>

    <br /><br />
    <select id="selectMenu" style="width: 200px">
    <option value="1">USA</option>
    <option value="2" selected="selected">India</option>
    <option value="3">UK</option>
    <option value="4">Australia</option>
    <option value="5">Canada</option>
</select>
</body>
</html>
