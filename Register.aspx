<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GreenBasket.Register" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="d-flex h-100">
        <div class="m-auto">

            <div class="table1 mb-3">
                <table>
                    <tr>

                        <th colspan="2" style="text-align: center">
                            <asp:Label ID="Label7" runat="server" Text="Registration Form"></asp:Label>

                            </th>
                            
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br />

                                </td>
                            </tr>
                            <tr>
                              
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <br />

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Birthdate"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Width="100%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br />

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RB1" runat="server" Text="Male" GroupName="g" />
                                    <asp:RadioButton ID="RB2" runat="server" Text="Female" GroupName="g" />

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br />

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br />

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCPassword" runat="server" TextMode="Password"></asp:TextBox></td>



                            </tr>

                            <tr>

                                <td>
                                    
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Must Be Same" ControlToCompare="txtPassword" ControlToValidate="txtCPassword" CssClass="text-danger"></asp:CompareValidator></td>
                                
                            </tr>
                            <tr>
                                <td>
                                    <br />

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBox" runat="server" />
                                    I accept all Terms & Conditions</td>
                            </tr>
                            <tr>
                                <td>
                                    <br />

                                </td>
                            </tr>

                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="BtnSubmit"  runat="server" Text="Sign Up" Width="100%" OnClick="BtnSubmit_Click"  /></td>

                            </tr>
                </table>
            </div>
        </div>
        </div>
    

    
</asp:Content>
