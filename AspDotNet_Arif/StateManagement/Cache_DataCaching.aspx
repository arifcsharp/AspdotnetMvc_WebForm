<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPages.Master" AutoEventWireup="true" CodeBehind="Cache_DataCaching.aspx.cs" Inherits="AspDotNet_Arif.StateManagement.Cache_DataCaching" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br />

    <div>
 
        User Name : <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <br /><br />

        Password : <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    

    </div>
</asp:Content>
