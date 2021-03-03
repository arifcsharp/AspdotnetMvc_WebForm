<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/myMasterPage.Master" AutoEventWireup="true" CodeBehind="DataSource.aspx.cs" Inherits="AspDotNet_Arif.ContentPages.DataSource" %>

<%@ Register Src="~/UserControls/DataSourcepage.ascx" TagPrefix="uc1" TagName="DataSourcepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:DataSourcepage runat="server" id="DataSourcepage" />
</asp:Content>
