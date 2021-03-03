<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyUserControlPages.ascx.cs" Inherits="AspDotNet_Arif.UserControls.MyUserControlPages" %>
<style type="text/css">


    .auto-style1 {
        width: 97%;
    }
    .auto-style2 {
        width: 499px;
    }
    .auto-style3 {
        width: 677px;
    }
    .auto-style4 {
        width: 251px;
    }
    .auto-style5 {
        width: 499px;
        text-align: center;
    }
</style>

<table class="auto-style1" style="background-color:azure">
    <tr>
        <td colspan="4" style="background-color: #99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Branch Information"></asp:Label>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="lblBranch" runat="server" Font-Bold="True" Font-Size="Medium" Text="Branch Name  :"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtBranchName" runat="server" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtBranchName" ErrorMessage="Branch Name Must be required !!" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td rowspan="7">
            <asp:GridView ID="dgViewBranch" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BranchID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="dgViewBranch_SelectedIndexChanged1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="BranchID" HeaderText="BranchID" InsertVisible="False" ReadOnly="True" SortExpression="BranchID" />
                    <asp:BoundField DataField="BranchName" HeaderText="BranchName" SortExpression="BranchName" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Branch]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="lblCity" runat="server" Font-Bold="True" Font-Size="Medium" Text="City  :"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtCity" runat="server" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City Must be required !!" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblBId" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
        </td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;&nbsp;&nbsp; &nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="btnAdd" runat="server" Font-Bold="True" Font-Size="Larger" OnClick="btnAdd_Click" Text="Add" BackColor="#3399FF" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdate" runat="server" Font-Bold="True" Font-Size="Larger" OnClick="btnUpdate_Click" Text="Update" BackColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Font-Bold="True" Font-Size="Larger" OnClick="btnDelete_Click" Text="Delete" BackColor="Red" BorderColor="#FF99CC" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            &nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

