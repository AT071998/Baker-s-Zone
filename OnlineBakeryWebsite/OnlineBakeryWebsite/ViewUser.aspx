<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="ViewUser.aspx.cs" Inherits="OnlineBakeryWebsite.ViewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1522px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <link href="css/Custome.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <table class="table table-bordered">
        <tr>
            <td>Profile Picture</td>
            <td>
                <asp:Image ID="ProfileImage" runat="server" Height="150px" Width="150px" />
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">User Name</td>
            <td class="auto-style1">
                <asp:Label ID="lblUserName" runat="server" CssClass="form-control"></asp:Label>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>Email Address</td>
            <td>
                <asp:Label ID="labelEmail" runat="server" CssClass="form-control"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Mobile Number</td>
            <td>
                <asp:Label ID="lblMobile" runat="server" CssClass="form-control"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>City</td>
            <td>
                <asp:Label ID="lblCity" runat="server" CssClass="form-control"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
