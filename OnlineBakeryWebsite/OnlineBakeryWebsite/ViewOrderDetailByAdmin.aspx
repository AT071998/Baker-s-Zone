<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="ViewOrderDetailByAdmin.aspx.cs" Inherits="OnlineBakeryWebsite.ViewOrderDetailByAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <br /> <br />
                <asp:Image ID="Image1" runat="server" Height="328px" Width="339px" />
            </td>
            
            <td class="auto-style3">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" style="text-decoration:underline;" Text="Product Detail"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Product Name:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblProdutName" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Product Price:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblProductPrice" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Order Date:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblOrderDate" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Delivery Date:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblDeliveryDate" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                
                     <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Quantity:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblQuantity" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                  
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style5"><table class="auto-style1">
                    <tr>
                        <td >
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" style="text-decoration:underline;" Font-Size="X-Large"  Text="Customer Detail"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" Text="CustomerName:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblCustomerName" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" Text="Address:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblAddress" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large" Text="Customer Number:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblCustomerContact" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>

                    </tr>
                
                    
                </table>

                <br />
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" Font-Bold="True" Font-Size="Medium" Text="Back" OnClick="Button1_Click" />

            </td>
        </tr>
    </table>

</asp:Content>

