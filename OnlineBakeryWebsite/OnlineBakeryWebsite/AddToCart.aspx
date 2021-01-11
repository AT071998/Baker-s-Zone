<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="OnlineBakeryWebsite.AddToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:white" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Your Cart" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>








&nbsp;<asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Product You have added to your Cart" ForeColor="Red"></asp:Label>&nbsp;
    <asp:Label ID="lblcart" runat="server" Font-Size="Medium" Text="Label" ForeColor="Red"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="None" CellPadding="4" CellSpacing="2" Font-Bold="True" Font-Size="Large" ForeColor="Black" ShowFooter="True"  OnRowDeleting="GridView1_RowDeleting" DataKeyNames="quantity" OnRowCommand="GridView1_RowCommand" CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S.No" />
            <asp:BoundField DataField="PId" HeaderText="Product Id" />
           <asp:ImageField DataImageUrlField="PIMAGE" DataImageUrlFormatString="{0}" HeaderText="Image">
                             <ControlStyle Height="150px" Width="150px" />
                         </asp:ImageField>
            <asp:BoundField DataField="PName" HeaderText="Product Name" />
            <asp:BoundField DataField="PPrice" HeaderText="Price" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" HeaderText="Remove" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" Height="50px" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="50px" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
    <br />
  
           
                    <div style="text-align:center">           
                      <asp:Button ID="Button1" OnClick="Button2_Click" CssClass="btn btn-primary" runat="server" Text="ADD MORE ITEMS" />&nbsp;
                    <asp:Button ID="btnBuyNow" OnClick="Button1_Click" CssClass="btn btn-primary" runat="server" Text="BUY NOW" />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
               
                    </div>
          
    <br />
    <br />
    </asp:Content>

