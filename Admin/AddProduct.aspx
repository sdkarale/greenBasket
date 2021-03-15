<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="GreenBasket.Admin.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="d-flex h-100">
        <div class="m-auto">
             <div class="mb-3">
                <div class="form-floating mb-3">
                    <asp:TextBox class="form-control" ID="txtNameP" runat="server"></asp:TextBox>

                    <label for="txtNameP">Name</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox class="form-control" ID="txtDescP" runat="server" TextMode="MultiLine"></asp:TextBox>

                    <label for="txtDescP">Description</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox class="form-control" ID="txtPriceP" runat="server"></asp:TextBox>

                    <label for="txtPriceP">Price</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox class="form-control" ID="txtQuantityP" runat="server"></asp:TextBox>

                    <label for="txtQuantityP">Quantity</label>
                </div>
                 <div class="form-floating">
                     <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                    <label for="FileUpload1">Image</label>
                </div>
                 <div class="form-floating mb-3">
                     <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cid"></asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:greenBasketConnectionString3 %>" SelectCommand="SELECT DISTINCT * FROM [Category]"></asp:SqlDataSource>
                    <label for="DropDownList1">Select Category</label>
                </div>
                 
            
            <asp:Button ID="BtnSubmitP" runat="server" CssClass="btn btn-outline-success" Text="Submit" OnClick="BtnSubmitP_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="BtnCancelP" runat="server" CssClass="btn btn-outline-danger" Text="Cancel" />

        </div>
    </div>
    </div>


</asp:Content>
