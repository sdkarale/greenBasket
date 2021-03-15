<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteCategory.aspx.cs" Inherits="GreenBasket.Admin.DeleteCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<div class="d-flex h-100">
    <div class="m-auto">
        
          <div class="mb-3">
             <h5 style="text-align:center"><asp:Label ID="Label2" runat="server"  Text="Are you Sure to Delete Category"></asp:Label></h5> 
              <br />
              <br />
             <h4 style="text-align:center; color:green"><asp:Label ID="txtDeleteCategory" runat="server"></asp:Label></h4>
    
    <br />
    
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnDelete"  CssClass="btn btn-outline-success"  runat="server" Text="Delete" OnClick="BtnDelete_Click" />                   
    
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                   
    
      <asp:Button ID="BtnCanceldelete" CssClass="btn btn-outline-danger" runat="server" Text="Cancel" OnClick="BtnCanceldelete_Click" />

</div> 
</div>
    </div>




</asp:Content>
