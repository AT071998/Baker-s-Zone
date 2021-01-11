<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="OnlineBakeryWebsite.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/Custome.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style type="text/css">
        .auto-style2 {
            width: 100%;
            margin-right: 0px;
        }
        .auto-style3 {
            width: 387px;
            height: 350px;
                margin-left: 30px;
            }
        .auto-style5 {
            width: 350px;
            height: 350px;
        }
        .auto-style6 {
            width: 350px;
            height: 350px;
        }
        .auto-style7 {
            width: 350px;
            height: 350px;
        }
        .auto-style8 {
           width: 350px;
            height: 350px;
        }
        .auto-style9 {
            width: 350px;
            height: 350px;
        }
        .auto-style10 {
            width: 350px;
            height: 350px;
        }
        .auto-style11 {
            width: 350px;
            height: 350px;
        }
        .auto-style12 {
            width: 350px;
            height: 350px;
        }
    .auto-style14 {
        width: 375px;
        text-align: center;
        align-content:center;
    }
    .auto-style15 {
        width: 424px;
        height: 400px;
        text-align: center;
    }
    .auto-style16 {
        text-align: center;
        width: 424px;
        height: 400px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/Custome.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <div class="row" style="padding-top:50px">
       
     
    <table class="table table-bordered">
        <tr>

            <td class="auto-style14">
                <br />
                <a href="bagels.aspx">
                <img alt="Image Not Found!" class="auto-style6" src="images/bagels-img.jpg" /><br />
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton2_Click">Bagels</asp:LinkButton>
                 </a>
            </td>
               
            <td class="auto-style15">
                <a href="Breads.aspx">
                <img alt="Image Not Found!" class="auto-style3" src="images/bread-img.jpg" /><br />
                <asp:LinkButton ID="LinkButton10" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton10_Click">Bread and Buns</asp:LinkButton>

                </a>
            </td>
            <td class="auto-style16">
                <a href="Cake.aspx">
                <img alt="" class="auto-style5" src="images/cake-img.jpg" /><br />
                <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton13_Click">Cakes and Pastries</asp:LinkButton>
                    </a>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <a href="cookies.aspx">
                <img alt="Image Not Found" class="auto-style6" src="images/muffin-img.jpg" /><br />
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton1_Click">Cookies</asp:LinkButton>
                    </a>
            </td>
            <td class="auto-style15">
                <a href="extras.aspx">
                <img alt="Image Not Found" class="auto-style3" src="images/extras.jpg" /><br />
                <asp:LinkButton ID="LinkButton11" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton11_Click">Extras</asp:LinkButton>
                    </a>
            </td>
            <td class="auto-style16">
                <a href="cupcakes.aspx">
                <img alt="" class="auto-style10" src="images/cupcakes.jpg" /><br />
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton6_Click">Cupcakes</asp:LinkButton>
                    </a>
            </td>-
        </tr>
        <!--
        <tr>
            <td class="auto-style14">
                <img alt="" class="auto-style6" src="Online%20Bckery/bread.jpg" /><asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton7_Click">Breads</asp:LinkButton>
            </td>
            <td class="auto-style15">
                <img alt="" class="auto-style3" src="Online%20Bckery/Doughnuts-740x555.jpg" /><br />
                <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton12_Click">Doughnut</asp:LinkButton>
            </td>
            <td class="auto-style16">
                <img alt="" class="auto-style5" src="Online%20Bckery/Pound_layer_cake.jpg" /><br />
                <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton9_Click">Cake</asp:LinkButton>
            </td>
        </tr>
        -->
        
    </table>
       </div>
</asp:Content>
