<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="GreenBasket.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="card text-dark bg-light" style="width: 30%; border-radius:4%; margin:.3%">
                            <asp:Image class="card-img-top" ID="Image2" runat="server" Height="60%"  />
  
  <div class="card-body ">
    <h5 class="card-title"><asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></h5>
    <p class="card-text">Price : <asp:Label ID="lblprice" runat="server" Text="Price"> </asp:Label> Rs / Kg</p>
      <p class="card-text">Quantity : <asp:Label ID="lblquantity" runat="server" Text="Label"></asp:Label> </p>
      <p class="card-text">Description : <asp:Label ID="lblDesc" runat="server" Text="Label"></asp:Label> </p>
    
      <div >
         <hr />
    <a href='../Addtocart.aspx?id=<%# Request.QueryString["id"] %>' class="btn btn-outline-success" data-toggle="tooltip" data-placement="bottom" title="Add to Cart">&#128722;</a>
      
  </div>


</asp:Content>
