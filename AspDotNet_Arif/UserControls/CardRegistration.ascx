<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CardRegistration.ascx.cs" Inherits="AspDotNet_Arif.UserControls.CardRegistration" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        margin-left: 40px;
        width: 287px;
        text-align: center;
    }
    .auto-style3 {
        width: 287px;
        text-align: right;
    }
    .auto-style4 {
        text-align: center;
    }
    .auto-style5 {
        width: 287px;
        text-align: left;
    }
    .auto-style6 {
        width: 287px;
        text-align: center;
    }
</style>

<table class="auto-style1" style="background-color:powderblue">
    <tr>
        <td colspan="3" class="auto-style4">
            <asp:Label ID="lblCR" runat="server" Font-Bold="True" Font-Size="Larger" Text="Card Registration"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name Must be required !!" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Must be required !!" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Must Be required !!" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Invalid !!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblMobileNo" runat="server" Text="Mobile No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMobileNO" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server" ControlToValidate="txtMobileNO" ErrorMessage="Mobile No Must be required !!" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:CheckBox ID="chkAgree" runat="server" Text="Yes , I am Agree" />
        </td>
        <td>
            <asp:Label ID="rtnMessage" runat="server"></asp:Label>
            <asp:Label ID="emailSendSuccess" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

