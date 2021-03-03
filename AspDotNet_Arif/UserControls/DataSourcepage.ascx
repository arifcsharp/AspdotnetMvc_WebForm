<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DataSourcepage.ascx.cs" Inherits="AspDotNet_Arif.UserControls.DataSourcepage" %>
<asp:Label ID="lblFormView" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Form View"></asp:Label>
<br />
<asp:FormView ID="FormView1" runat="server" DataKeyNames="CardId" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        CardId:
        <asp:Label ID="CardIdLabel1" runat="server" Text='<%# Eval("CardId") %>' />
        <br />
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        Address:
        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
        <br />
        Email:
        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        MobileNo:
        <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
        <br />
        Message:
        <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        Address:
        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
        <br />
        Email:
        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        MobileNo:
        <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
        <br />
        Message:
        <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        CardId:
        <asp:Label ID="CardIdLabel" runat="server" Text='<%# Eval("CardId") %>' />
        <br />
        Name:
        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        Address:
        <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
        <br />
        Email:
        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        MobileNo:
        <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Bind("MobileNo") %>' />
        <br />
        Message:
        <asp:Label ID="MessageLabel" runat="server" Text='<%# Bind("Message") %>' />
        <br />

    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [CardRegistration]"></asp:SqlDataSource>
<p>
    &nbsp;</p>
<asp:Label ID="lblDetailsView" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Details View"></asp:Label>
<p>
    &nbsp;</p>
<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="AccountNo" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" InsertVisible="False" ReadOnly="True" SortExpression="AccountNo" />
        <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
        <asp:BoundField DataField="BranchID" HeaderText="BranchID" SortExpression="BranchID" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Accounts_Holder]"></asp:SqlDataSource>

