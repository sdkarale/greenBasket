<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="GreenBasket.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="card text-dark bg-light" style="width: 24%;border-radius:4%; margin:.3%">
                            <asp:Image class="card-img-top" ID="Image1" runat="server" Height="60%" ImageUrl='<%#"~/Images/"+Eval("pimage") %>' />
  
  <div class="card-body ">
    <h5 class="card-title"><%#Eval("pname")%></h5>
    <p class="card-text">Rs : <%#Eval("price") %> per Kg</p>
     <div >
         <hr />
    <a href='<%#"../Addtocart.aspx?id="+Eval("pid") %>' class="btn btn-outline-success">&#128722;</a>
      <a href='<%#"../Details.aspx?id="+Eval("pid") %>' class="btn btn-outline-primary ms-5">Details</a>
  </div>
      
  </div>
</div>
        </ItemTemplate>
        </asp:Repeater>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT * FROM [Product]">
        </asp:SqlDataSource>
</asp:Content>
