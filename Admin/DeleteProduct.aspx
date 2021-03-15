<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="GreenBasket.Admin.DeleteProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<div >
    <div class="m-auto">
        
          <div class="mb-3">
             <h5 style="text-align:center"><asp:Label ID="Label2" runat="server"  Text="Are you Sure to Delete Product"></asp:Label></h5> 
              <br />
              <br />
             
    
    <br />
    <div class="card text-dark bg-light" style="width: 50%;border-radius:4%; margin:.3%; top: 49px; left: 36px;">
                            <asp:Image class="card-img-top" ID="Image2" runat="server" Height="60%" ImageUrl='<%#"~/Images/babyVeges.png" %>' />
  
  <div class="card-body ">
    <h5 class="card-title"><asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></h5>
    <p class="card-text">Price : <asp:Label ID="lblprice" runat="server" Text="Price"> </asp:Label> Rs / Kg</p>
      <p class="card-text">Quantity : <asp:Label ID="lblquantity" runat="server" Text="Label"></asp:Label> </p>
      <p class="card-text">Description : <asp:Label ID="lblDesc" runat="server" Text="Label"></asp:Label> </p>
    
      <div >
         <hr />
      
  </div>
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnDelete"  CssClass="btn btn-outline-success"  runat="server" Text="Delete" OnClick="BtnDelete_Click1"   />                   
    
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                   
    
      <asp:Button ID="BtnCanceldelete" CssClass="btn btn-outline-danger" runat="server" Text="Cancel" OnClick="BtnCanceldelete_Click"  />

</div> 
</div>
    </div>




</asp:Content>
