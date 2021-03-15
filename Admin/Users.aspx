<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="GreenBasket.Admin.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:gridview  runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="u_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="u_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="u_id" />
            <asp:BoundField DataField="uname" HeaderText="Name" SortExpression="uname" />
            <asp:BoundField DataField="uemail" HeaderText="Email" SortExpression="uemail" />
            <asp:BoundField DataField="udob" HeaderText="Dob" SortExpression="udob" />
            <asp:BoundField DataField="ugender" HeaderText="Gender" SortExpression="ugender" />
            <asp:BoundField DataField="upassword" HeaderText="Password" SortExpression="upassword" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:gridview>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mycon %>" DeleteCommand="DELETE FROM [Users] WHERE [u_id] = @original_u_id AND [uname] = @original_uname AND [uemail] = @original_uemail AND (([udob] = @original_udob) OR ([udob] IS NULL AND @original_udob IS NULL)) AND [ugender] = @original_ugender AND [upassword] = @original_upassword" InsertCommand="INSERT INTO [Users] ([uname], [uemail], [udob], [ugender], [upassword]) VALUES (@uname, @uemail, @udob, @ugender, @upassword)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [uname] = @uname, [uemail] = @uemail, [udob] = @udob, [ugender] = @ugender, [upassword] = @upassword WHERE [u_id] = @original_u_id AND [uname] = @original_uname AND [uemail] = @original_uemail AND (([udob] = @original_udob) OR ([udob] IS NULL AND @original_udob IS NULL)) AND [ugender] = @original_ugender AND [upassword] = @original_upassword">
        <DeleteParameters>
            <asp:Parameter Name="original_u_id" Type="Int32" />
            <asp:Parameter Name="original_uname" Type="String" />
            <asp:Parameter Name="original_uemail" Type="String" />
            <asp:Parameter DbType="Date" Name="original_udob" />
            <asp:Parameter Name="original_ugender" Type="String" />
            <asp:Parameter Name="original_upassword" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="uemail" Type="String" />
            <asp:Parameter DbType="Date" Name="udob" />
            <asp:Parameter Name="ugender" Type="String" />
            <asp:Parameter Name="upassword" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="uemail" Type="String" />
            <asp:Parameter DbType="Date" Name="udob" />
            <asp:Parameter Name="ugender" Type="String" />
            <asp:Parameter Name="upassword" Type="String" />
            <asp:Parameter Name="original_u_id" Type="Int32" />
            <asp:Parameter Name="original_uname" Type="String" />
            <asp:Parameter Name="original_uemail" Type="String" />
            <asp:Parameter DbType="Date" Name="original_udob" />
            <asp:Parameter Name="original_ugender" Type="String" />
            <asp:Parameter Name="original_upassword" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
