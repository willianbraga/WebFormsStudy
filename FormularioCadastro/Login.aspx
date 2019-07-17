<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FormularioCadastro.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 73px;
        }

        .auto-style2 {
            width: 165px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="margin: auto; border: 5px solid gray">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>

                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>

                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="btnSign" runat="server" Text="Sign" OnClick="btnSign_Click" /></td>

                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style2">
                        <asp:Label ID="lblError" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label></td>

                </tr>
            </table>
        </div>
    </form>
</body>
</html>
