<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/myMasterPage.Master" AutoEventWireup="true" CodeBehind="MyRoleManagement.aspx.cs" Inherits="AspDotNet_Arif.Management.MyRoleManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <h2>Manage The User and Roles</h2>
    (only users associated with the admin role can access this page)

    <br />

    <div class="row">
        <div class="col-sm-12 table-responsive">
            <h2>Users</h2>
            <asp:GridView ID="grdUsers" runat="server" DataKeyNames="Id"
                AutoGenerateColumns="False" SelectMethod="grdUsers_GetData" 
                ItemType="AspDotNet_Arif.Models.ApplicationUser" 
                CssClass="table table-bordered table-striped table-condensed" 
                OnPreRender="GridView_PreRender" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField HeaderText="User Name" DataField="UserName" />
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:TemplateField HeaderText="Roles">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# ListRoles(Item.Roles) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowSelectButton="true" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>        
        </div>
        <div class="col-sm-6">
            <asp:DetailsView ID="dvUsers" runat="server" DataKeyNames="Id" 
                AutoGenerateRows="false" CssClass="table table-bordered table-condensed" 
                SelectMethod="dvUsers_GetItem" UpdateMethod="dvUsers_UpdateItem" 
                InsertMethod="dvUsers_InsertItem" DeleteMethod="dvUsers_DeleteItem">
                <Fields>
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:CommandField ShowEditButton="true" ShowInsertButton="true" 
                        ShowDeleteButton="true" />
                </Fields>
            </asp:DetailsView>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <h2>Roles</h2>
            <asp:GridView ID="grdRoles" runat="server" DataKeyNames="Id" 
                AutoGenerateColumns="False" SelectMethod="grdRoles_GetData"
                CssClass="table table-bordered table-striped table-condensed" 
                OnPreRender="GridView_PreRender" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowSelectButton="true" />
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
            <asp:DetailsView ID="dvRoles" runat="server" DataKeyNames="Id" 
                AutoGenerateRows="false" CssClass="table table-bordered table-condensed" 
                SelectMethod="dvRoles_GetItem" UpdateMethod="dvRoles_UpdateItem" 
                InsertMethod="dvRoles_InsertItem" DeleteMethod="dvRoles_DeleteItem">
                <Fields>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowEditButton="true" ShowInsertButton="true" 
                        ShowDeleteButton="true" />
                </Fields>
            </asp:DetailsView>
        </div>
        <div class="col-sm-6">
            <h2>Add Roles to User</h2>
            <div class="form-group">
                <label class="control-label">Select a user:</label>
                <asp:DropDownList ID="ddlUsers" runat="server" 
                    SelectMethod="grdUsers_GetData" DataValueField="Id"
                    DataTextField="UserName" CssClass="form-control">
                </asp:DropDownList> 
            </div>
            <div class="form-group">
                <label class="control-label">Add one or more roles:</label>
                <asp:ListBox ID="lstRoles" runat="server" SelectionMode="Multiple" 
                    SelectMethod="grdRoles_GetData" DataValueField="Id"
                    DataTextField="Name" CssClass="form-control"></asp:ListBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAddRoles" runat="server" Text="Add Roles" 
                CssClass="btn btn-default" OnClick="btnAddRoles_Click" />
            </div>
        </div>
    </div>
</asp:Content>
