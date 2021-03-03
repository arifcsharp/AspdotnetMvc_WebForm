<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/myMasterPage.Master" AutoEventWireup="true" CodeBehind="AccountHolder.aspx.cs" Inherits="AspDotNet_Arif.ContentPages.AccountHolder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style1 {
            width: 100%;
        }
        .auto-style7 {
            width: 521px;
        }
        .auto-style5 {
        width: 607px;
    }
        .auto-style9 {
        width: 352px;
    }
        .auto-style8 {
            height: 26px;
            width: 521px;
            text-align: center;
        }
        .auto-style6 {
            height: 26px;
            width: 607px;
            text-align: center;
        }
        .auto-style10 {
        height: 26px;
        width: 352px;
    }
        .auto-style2 {
            height: 26px;
        }
        .auto-style11 {
            width: 521px;
            text-align: center;
        }
        .auto-style12 {
            width: 607px;
            text-align: left;
        }
        .auto-style13 {
            height: 26px;
            width: 607px;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style1" style="background-color:paleturquoise">
        <tr>
            <td colspan="4" class="text-center">
                <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Size="Larger" Text="Account Holder Information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblAccountName" runat="server" Text="Account Name"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtAccountName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtAccountName" ErrorMessage="Name Must be required !!" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td rowspan="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Must be required !!" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem Enabled="False">Choose Any</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" ></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of Birth Must be required " ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of Birth must be between 1990-2025" ForeColor="Red" MaximumValue="01-01-2050" MinimumValue="01-01-1990" Type="Date">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblMobileNo" runat="server" Text="Mobile No"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblBid" runat="server" Text="Branch Name"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="ddlBid" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="BranchName" DataValueField="BranchID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Branch]"></asp:SqlDataSource>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorBid" runat="server" ControlToValidate="ddlBid" ErrorMessage="Branch Id Must be required !!" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">
                <asp:CheckBox ID="chkAgree" runat="server" Text="Yes,I Agree" />
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblAno" runat="server"></asp:Label>
            </td>
            <td colspan="2" class="text-left">
                <asp:Button ID="btnAdd" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="btnAdd_Click" Text="Add" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style6">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td rowspan="10">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Accounts_Holder]"></asp:SqlDataSource>
                <asp:GridView ID="dgViewAccHolder" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style11" DataKeyNames="AccountNo" DataSourceID="SqlDataSource1" Height="216px" OnSelectedIndexChanged="dgViewAccHolder_SelectedIndexChanged" Width="563px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" InsertVisible="False" ReadOnly="True" SortExpression="AccountNo" />
                        <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                        <asp:BoundField DataField="BranchID" HeaderText="BranchID" SortExpression="BranchID" />
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
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
