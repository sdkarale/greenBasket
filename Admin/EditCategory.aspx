<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="GreenBasket.Admin.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<div class="d-flex h-100">
    <div class="m-auto">
        
          <div class="mb-3">
              <asp:Label ID="Label2" runat="server" Text="Update Category"></asp:Label>

              <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:TextBox ID="txtUpdateCategory" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnUpdate" CssClass="btn btn-outline-success"  runat="server" Text="Update" OnClick="BtnUpdate_Click" />                   
    
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                   
    
      <asp:Button ID="BtnCancelUpdate" CssClass="btn btn-outline-danger" runat="server" Text="Cancel" OnClick="BtnCancelUpdate_Click"/>

</div> 
</div>
    </div>



</asp:Content>
