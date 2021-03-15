<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GreenBasket.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="d-flex h-100">
    <div class="m-auto">
        
            <br />
            <div class="form-floating mb-3">

                <asp:TextBox class="form-control" ID="txtUser" runat="server"></asp:TextBox>
                <label for="txtUser">Email-id</label>
               <%-- <asp:Label for="txtLoginEmail" ID="Label1" runat="server" Text="Username or Email"></asp:Label>--%>
                
            </div>
            <div class=" form-floating mb-3">
                <%--<asp:Label ID="Label2" class="form-label" runat="server" Text="Password"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                <asp:TextBox class="form-control" ID="txtPassword"  runat="server" TextMode="Password"></asp:TextBox>
                <label for="txtPassword">Password</label>
            </div>
            <div class="mb-3 form-check">
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="Label3" runat="server" Text="I accept all Terms & Conditions"></asp:Label>
            </div>
            <asp:Button ID="Button1" class="btn btn-outline-success" runat="server" Width="100%" Text="Login" OnClick="Button1_Click" />
            <br />
            <asp:Literal ID="Literal1" runat="server" ></asp:Literal>
            <br />
            <div style="text-align:center"> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">If not Registered, Register Here..!</asp:HyperLink></div>
           
       
    </div></div>
</asp:Content>
 