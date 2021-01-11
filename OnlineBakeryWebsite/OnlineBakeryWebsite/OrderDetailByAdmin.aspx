<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="OrderDetailByAdmin.aspx.cs" Inherits="OnlineBakeryWebsite.OrderDetailByAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <link href="css/Custome.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <h2 style="color:black; font-size:30px; text-align:center;">Order Information!</h2>
    <br />
    <asp:GridView ID="GdOrders" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="OrderId,PId,UserId" DataSourceID="SqlDataSource1" Font-Bold="True" 
        Font-Size="Medium" ForeColor="Black" GridLines="Vertical" CssClass="table table-bordered" OnRowCommand="GridView1_RowCommand">
    <AlternatingRowStyle  />
    <Columns>
        <asp:BoundField DataField="OrderId" HeaderText="Order Id" InsertVisible="False" ReadOnly="True" SortExpression="OrderId">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="Name" HeaderText="Customer Name" SortExpression="FullName">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="OrderDate" HeaderText="Order Date" SortExpression="OrderDate" />
        <asp:BoundField DataField="PName" HeaderText="Product Name" SortExpression="PName">
        </asp:BoundField>
        <asp:ImageField DataImageUrlField="PIMAGE" HeaderText="Image">
            <ControlStyle Height="150px" Width="150px" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:ImageField>
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="quantity">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="price">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="price">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="View Details">
            <ItemTemplate>
                <asp:Button ID="btnViewDetail" runat="server" CommandArgument='<%# Eval("OrderId")%>' CommandName="viewdetail" Text="View Detail" Cssclass="btn btn-danger" />
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Reply">
            <ItemTemplate>
                <asp:Button ID="btnReply" runat="server" CommandArgument='<%# Eval("OrderId")%>' CommandName="Reply" Text="Process" Cssclass="btn btn-danger" />
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
    </Columns>
    <FooterStyle  />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle  ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="Gray" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDB %>" 
    SelectCommand="SELECT OrderTable.OrderId, OrderTable.OrderDate,OrderTable.Quantity, OrderTable.Price, OrderTable.Pay_Type, 
    OrderTable.Product_Id, OrderTable.Customer_Id,
    TableProduct.PId, TableProduct.PName, TableProduct.PPrice, TableProduct.PDescription, TableProduct.PIMAGE,
    UserTable.UserId, UserTable.Username, UserTable.Name, UserTable.MobileNo, UserTable.Address, UserTable.City, UserTable.Email, UserTable.Password,UserTable.UserImage FROM OrderTable INNER JOIN TableProduct ON OrderTable.Product_Id = TableProduct.PId INNER JOIN UserTable ON OrderTable.Customer_Id = UserTable.UserId ORDER BY OrderTable.OrderId DESC"></asp:SqlDataSource>
</asp:Content>