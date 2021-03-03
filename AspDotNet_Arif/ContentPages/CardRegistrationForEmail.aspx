<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/myMasterPage.Master" AutoEventWireup="true" CodeBehind="CardRegistrationForEmail.aspx.cs" Inherits="AspDotNet_Arif.ContentPages.CardRegistrationForEmail" %>

<%@ Register Src="~/UserControls/CardRegistration.ascx" TagPrefix="uc1" TagName="CardRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CardRegistration runat="server" id="CardRegistration" />
</asp:Content>
