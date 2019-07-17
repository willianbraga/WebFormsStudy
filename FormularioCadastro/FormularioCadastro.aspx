<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioCadastro.aspx.cs" Inherits="FormularioCadastro.FormularioCadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="margin: auto; border: 5px solid gray">
                <h3>Sign in FORM</h3>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox></td>

                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>

                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Contact"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtContact" runat="server"></asp:TextBox></td>

                </tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label></td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>

                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Text="Select City" Value="" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Guarulhos" Value="Guarulhos"></asp:ListItem>
                            <asp:ListItem Text="São Paulo" Value="São Paulo"></asp:ListItem>
                            <asp:ListItem Text="Brasil" Value="Brasil"></asp:ListItem>
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>

                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text=" Confirm Password"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="118px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="3"><hr/></td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" /></td>
                    <td>
                        <asp:Button ID="btnSignin" runat="server" Text="Sign in" OnClick="btnSignin_Click" /></td>

                </tr>
                <tr>
                    <td colspan="2" style="margin: auto; text-align: center">
                        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
