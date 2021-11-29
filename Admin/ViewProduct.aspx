<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="GreenBasket.Admin.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <br /> <div class="d-flex h-100">
    <div class="m-auto">

<div class="mb-3 fixed">
        <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="Button1_Click" />
</div>
        </div>
    </div>
       
       
        <br />
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
    <a href='<%#"DeleteProduct.aspx?id="+Eval("pid") %>' class="btn btn-outline-success">Delete</a>
    
  </div>
      
  </div>
</div>
        </ItemTemplate>
        </asp:Repeater>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" DeleteCommand="DELETE FROM [Product] WHERE [pid] = @pid" InsertCommand="INSERT INTO [Product] ([pname], [pdesc], [price], [quantity], [pimage], [c_id]) VALUES (@pname, @pdesc, @price, @quantity, @pimage, @c_id)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [pname] = @pname, [pdesc] = @pdesc, [price] = @price, [quantity] = @quantity, [pimage] = @pimage, [c_id] = @c_id WHERE [pid] = @pid">
            <DeleteParameters>
                <asp:Parameter Name="pid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pname" Type="String" />
                <asp:Parameter Name="pdesc" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="pimage" Type="String" />
                <asp:Parameter Name="c_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pname" Type="String" />
                <asp:Parameter Name="pdesc" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="pimage" Type="String" />
                <asp:Parameter Name="c_id" Type="Int32" />
                <asp:Parameter Name="pid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
</asp:Content>
