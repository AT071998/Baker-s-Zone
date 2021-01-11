<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="ProductInfo.aspx.cs" Inherits="OnlineBakeryWebsite.ProductInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/Custome.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <div class ="container " >
            <div class ="form-horizontal ">
                <h2 style="color:black; font-size:30px; text-align:center;">Product Information</h2>
                 <asp:GridView ID="gdProductsView" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" 
                     
     EmptyDataText="No records has been added.">
                     <Columns>
                         <asp:BoundField DataField="PId" HeaderText="Product ID" />
                         
                         <asp:BoundField DataField="PName" HeaderText="Name" />
                         <asp:BoundField DataField="PPrice" HeaderText="Price" />                  
                         <asp:BoundField DataField="PDescription" HeaderText="Description" />
                         <asp:ImageField DataImageUrlField="PIMAGE" HeaderText="Product Picture">
                             <ControlStyle Height="150px" Width="150px" />
                         </asp:ImageField>
                       
                         
                         <asp:HyperLinkField DataNavigateUrlFields="PId" DataNavigateUrlFormatString="UpdateProduct.aspx?PId={0}" HeaderText="Operations" Text="Edit/Delete" />
                         
                         
                      
                        
                         
                      
                        
                         
                      
                         
                         

                      
                        
                         
                      
                         
                         
                      
                        
                         
                      
                         
                     </Columns>
                    </asp:GridView>
               

                </div>
     


</asp:Content>











