<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="FormularioCadastro.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><header>
            <asp:Label ID="lblUserDetails" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
            </header>
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationDBConnectionString %>" DeleteCommand="DELETE FROM [UserRegistration] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [UserRegistration] ([FirstName], [LastName], [Contact], [Gender], [Address], [UserName], [PassWord]) VALUES (@FirstName, @LastName, @Contact, @Gender, @Address, @UserName, @PassWord)" SelectCommand="SELECT * FROM [UserRegistration]" UpdateCommand="UPDATE [UserRegistration] SET [FirstName] = @FirstName, [LastName] = @LastName, [Contact] = @Contact, [Gender] = @Gender, [Address] = @Address, [UserName] = @UserName, [PassWord] = @PassWord WHERE [UserId] = @UserId">
                <DeleteParameters>
                    <asp:Parameter Name="UserId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="PassWord" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="PassWord" Type="String" />
                    <asp:Parameter Name="UserId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <h2 style="text-align:center">GridView You can Edit or Delete que data</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="PassWord" HeaderText="PassWord" SortExpression="PassWord" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
