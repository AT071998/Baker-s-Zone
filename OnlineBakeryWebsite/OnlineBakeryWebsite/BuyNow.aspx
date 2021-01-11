<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="BuyNow.aspx.cs" Inherits="OnlineBakeryWebsite.BuyNow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
     <div class ="container ">
     <h1 class="text-center">
         Final Reciept
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    </h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" BackColor="White"  BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Large" ForeColor="Black" GridLines="Vertical" ShowFooter="True">
        <AlternatingRowStyle BackColor="#CCCCCC" />
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
        </Columns>
        <FooterStyle BackColor="#CCCCCC" Height="50px" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
     </asp:GridView>
  
     <asp:MultiView ID="MultiView1" runat="server">
         <asp:View ID="viewMeasurmentDetails" runat="server">
             <table class="center">
                 <tr>
                     <td>
                         <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Order Detail"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style16">
                         <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" Text="Ordering Date:-"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lblOrderingDate" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style16">
                         <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delivery Time:-"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lblDeliveryDate" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                  <tr>
                     <td class="auto-style21">
                         <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Medium" Text="Payment Type:-"></asp:Label>
                     </td>
                     <td class="auto-style4">
                         <asp:Label ID="lblPayType" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style21">
                         <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Enter Your Delivery Address:-"></asp:Label>
                     </td>
                     <td class="auto-style4">
                         
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Height="113px" TextMode="MultiLine" Width="268px"></asp:TextBox>
                         
                     </td>
                 </tr>
                
                  <tr>
                     
                     <td>&nbsp; <br />
                 <br /><asp:Button ID="Button3" runat="server" onclick="Button2_Click" Text="Submit &gt;&gt;" OnClientClick="return confirm('Are you sure? Order once placed cannot be cancelled');" class="btn btn-primary"  />
                       
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style27">&nbsp;</td>
                   
                       <td>
                <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                 <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                <ProgressTemplate>
                                    Please wait . . While we process your request!!!
                                </ProgressTemplate>
                            </asp:UpdateProgress>
            </td>
                 </tr>
             </table>
         </asp:View>
         
       
           
     </asp:MultiView>
     <br />
         </ContentTemplate></asp:UpdatePanel>
    &nbsp;  <asp:HyperLink ID="HyperLink1" CssClass="text-center" runat="server" NavigateUrl="~/TrackOrder.aspx" Visible="false">Track Your Order</asp:HyperLink>
</asp:Content>


