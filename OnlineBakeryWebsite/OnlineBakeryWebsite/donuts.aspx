<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="donuts.aspx.cs" Inherits="OnlineBakeryWebsite.donuts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 54px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="css/Custome.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
            <div class ="container " >
            <div class ="form-horizontal ">
                <h2 style="color:black; font-size:30px; text-align:center;">Donuts</h2>
                
    <asp:DataList ID="DataList1" runat="server" DataKeyField="PId" DataSourceID="SqlDataSource1"  Font-Size="Large" RepeatColumns="3" RepeatDirection="Horizontal" Width="1300px" BackColor="White"   CellPadding="3" ForeColor="Black" GridLines="Vertical" OnItemCommand="DataList1_ItemCommand">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <table class="table table-bordered" >
                
                <tr>
                    <td class="auto-style2">
                        <img src="<%# Eval("PIMAGE") %>" style= "height:200px;"/>
                    </td>
                </tr>
                  <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("PName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Price:- "></asp:Label><span style="color:Red">Rs.</span>
                        <asp:Label ID="Label3" style="color:Red" runat="server" Text='<%# Eval("PPrice") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Quantity:-"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            
                        </asp:DropDownList>
                        <asp:Label ID="Label5" runat="server" Text="Packet"></asp:Label>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" class="btn btn-danger" CommandArgument='<%# Eval("PId")%>' CommandName="addtocart" Font-Bold="True" Font-Size="Medium" Text="Add To Cart " />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" class="btn btn-primary" CommandArgument='<%# Eval("PId")%>' CommandName="viewdetail" Font-Bold="True" Font-Size="Medium" Text="View Detail" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
     </asp:DataList>
                </div>
                </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDB %>" SelectCommand="select * from TableProduct  where PCategoryId=1007 order by  PId  desc"></asp:SqlDataSource>
</asp:Content>
