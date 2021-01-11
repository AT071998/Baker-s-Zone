<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="Viewdetails.aspx.cs" Inherits="OnlineBakeryWebsite.Viewdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous">

    </script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   

   
    <br />
    <br />

    <div style="padding-top:50px">
        <div class="col-md-5">
            <div style="max-width:480px" class="thumbnail">
                 <asp:repeater ID="rptrImage" runat="server">
                     <ItemTemplate>
                <img src="<%# Eval("PIMAGE") %>" >
                         </ItemTemplate>
                </asp:repeater>
            </div>
        </div>
        <div class="col-md-5">
            <asp:Repeater ID="rptrProductDetails" runat="server"  >
                <ItemTemplate>
            <div class="divDet1">
                 <h1 class="proNameView"><%# Eval("PName") %>  </h1>
                <span class="proNameViewCart">Rs.<%#Eval("PPrice") %></span></div>
            <div >
                
            </div>
            <hr />
            <div class="divDet1">
                <h5 class="h5size" style="font-size:15px; color:firebrick"> Description</h5>
                <p style="font-size:15px; color:firebrick">
                    <%#Eval("PDescription") %>
                </p>

                 
                
            </div>
            <div >
                <b><p"><%# ((int)Eval("FreeDelivery")==1)? "Free Delivery":""  %>    </p></b>
        
               <b> <p><%# ((int)Eval("COD")==1)? "Cash on Delivery":"" %></p></b>
            </div>
                    <asp:HiddenField ID="hfCatID" runat="server" Value='<%# Eval("PCategoryId") %>' />
</ItemTemplate>
</asp:Repeater>

        </div>

    </div>
</asp:Content>
