<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TutorialForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script lang ="javascript" type="text/javascript">
        function GetHiddenFieldData() {
            alert("employeeid = " + document.getElementById('HiddenField1').value);
        }
        function Button3_or_whatever_onclick() {
            GetHiddenFieldData()
        }
    </script>

    <style type="text/css">
        .auto-style1 {
            width: 168px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AdRotator ID="AdRotator1" AdvertisementFile="~/AdsData.xml" KeywordFilter="Google" runat="server" Height="80px" Target="_blank" Width="80px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Select a Date"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="172px"></asp:TextBox>
        <asp:ImageButton ID="Image1Button" runat="server" ImageUrl="~/Images/Calendar.png" Height="30px" Width="30px" ImageAlign="Middle" OnClick="Image1Button_Click"/>
        <br />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" Visible="False" Caption="Training Calendar" CaptionAlign="Top" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <br />
        <br />
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <table>
            <tr>
                <td>UserName</td>
                <td class="auto-style1">
                    <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <%--<asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" />--%>

        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="ViewPersonalDetails" runat="server">
                <table style ="border:1px solid black"">
                    <tr>
                        <td colspan ="2">
                            <h2>Step 1 - Personal Details</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td>
                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td>
                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                            <asp:DropDownList ID="ddlGender" runat="server">
                                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan ="2" style="text-align:right">
                            <asp:Button ID="btnGoToStep2" runat="server" Text="Step 2 >>" onclick="btnGoToStep2_click"/>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewContactDetails" runat="server">
                <table style ="border:1px solid black"">
                    <tr>
                        <td colspan ="2">
                            <h2>Step 2 - Contact Details</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>Email Address</td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td>
                            <asp:TextBox ID="PhoneNumber" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan ="2" style="text-align:left">
                            <asp:Button ID="btnGoBacktoStep1" runat="server" Text="<< Step 1" onclick="btnGoToStep1_click"/>
                        </td>
                        <td style="text-align:right">
                            <asp:Button ID="btnGoToStep3" runat="server" Text="Step 3 >>" onclick="btnGoToStep3_click"/>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewSummary" runat="server">
                <table style ="border:1px solid black"">
                    <tr>
                        <td colspan ="2">
                            <h2>Step 3 - Summary</h2>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><h3>Personal Details</h3></td>
                    </tr>
                    <tr>
                        <td>First name</td>
                        <td>
                            <asp:Label ID="lblFirsName" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Last name</td>
                        <td>
                            <asp:Label ID="lblLastName" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                            <asp:Label ID="lblGender" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><h3>Contact Details</h3></td>
                    </tr>
                    <tr>
                        <td>Email Address</td>
                        <td>
                            <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td>
                            <asp:Label ID="lblPhone" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan ="2" style="text-align:left">
                            <asp:Button ID="BacktoStep2" runat="server" Text="<< Step 2" onclick="btnGoToStep2_click"/>
                        </td>
                        <td style="text-align:right">
                            <asp:Button ID="Submitbtn" runat="server" Text="Submit" onclick="SubmitBtn"/>
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
