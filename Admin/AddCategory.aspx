<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="GreenBasket.Admin.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
<div class="d-flex h-100">
    <div class="m-auto">
      <form>   
          <div class="mb-3">
              <asp:Label ID="Label1" runat="server" Text="Add Category"></asp:Label>


    <asp:TextBox ID="txtAddCategory1" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnSubmit" CssClass="btn btn-outline-success"  runat="server" Text="Submit" OnClick="BtnSubmit_Click" />                   
    
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                   
    
      <asp:Button ID="BtnCancel" CssClass="btn btn-outline-danger" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />

</div></form> 
</div>
    </div>
</asp:Content>
