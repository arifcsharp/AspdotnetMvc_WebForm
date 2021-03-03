<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/myMasterPage.Master" AutoEventWireup="true" CodeBehind="Branch.aspx.cs" Inherits="AspDotNet_Arif.Authorization.Branch" %>

<%@ Register Src="~/UserControls/MyUserControlPages.ascx" TagPrefix="uc1" TagName="MyUserControlPages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:MyUserControlPages runat="server" ID="MyUserControlPages" />
</asp:Content>
