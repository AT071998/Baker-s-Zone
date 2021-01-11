<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="ProcessOrder.aspx.cs" Inherits="OnlineBakeryWebsite.ProcessOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="css/Custome.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .center{
            margin-left:auto;
            margin-right:auto;
        }
    </style>
    <center>
    <asp:Label ID="Label1" runat="server" Font-Bold="True"  Font-Size="X-Large" Text="Update Status of Order"></asp:Label>
        </center>
    <br />
    <table class="center table table-bordered" style="width:auto;">
        
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Order ID"></asp:Label>
            </td>
            <td c>
                <asp:Label ID="lblOrderid" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delivery Time Given"></asp:Label>
            </td>
            <td >
                <asp:Label ID="lblComplitionDate" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Customer Name"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="lblCusName" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Product Name:-"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblClothName" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="Status"></asp:Label>
            </td>
            <td>
               
                <asp:DropDownList ID="ddStatus" runat="server" DataTextField="=">
                    <asp:ListItem>UnderProcess</asp:ListItem>
                            <asp:ListItem>Delivery in 30 Mins</asp:ListItem>
                            <asp:ListItem>Delivery in 10 Mins</asp:ListItem>
                    <asp:ListItem>Delivered Succesfully!</asp:ListItem>
                    
                </asp:DropDownList>
            </td>
            <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Update the Status" ControlToValidate="ddStatus" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td ><asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" Text="Reply:-"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtReply" runat="server" Height="106px" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td>
                <asp:Button ID="btnSubmit" runat="server"  Text="Update Status" OnClick="btnSubmit_Click" CssClass="btn btn-danger" />
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td>
                <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Green"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
