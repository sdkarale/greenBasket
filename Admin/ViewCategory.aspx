<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewCategory.aspx.cs" Inherits="GreenBasket.Admin.ViewCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
<div class="d-flex h-100">
    <div class="m-auto">

<div class="mb-3">
        <asp:Button ID="Button1" runat="server" Text="Add Category" OnClick="Button1_Click" />
</div>
        </div>
    </div>

    <div class="row">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="card text-dark bg-light" style="width: 24%;border-radius:4%; margin:.3%">
                            <asp:Image class="card-img-top" ID="Image1" runat="server" Height="60%" ImageUrl='<%#"~/Images/babyVeges.png" %>' />
  
  <div class="card-body ">
    <h5 class="card-title"><%#Eval("cname")%></h5>
    <p class="card-text">Vegetable</p>
     <div >
         <hr />
    <a href='<%#"EditCategory.aspx?id="+Eval("cid") %>' class="btn btn-outline-success" >EDIT</a>
      <a href='<%#"DeleteCategory.aspx?id="+Eval("cid") %>' class="btn btn-outline-danger ms-5">DELETE</a>
  </div>
      
  </div>
</div>
                    </ItemTemplate>
                </asp:Repeater>
       </div> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:greenBasketConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [cid] = @cid" InsertCommand="INSERT INTO [Category] ([cname]) VALUES (@cname)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [cname] = @cname WHERE [cid] = @cid">
            <DeleteParameters>
                <asp:Parameter Name="cid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cname" Type="String" />
                <asp:Parameter Name="cid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
     

</asp:Content>
