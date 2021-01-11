<%@ Page Title="" Language="C#"  MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="OnlineBakeryWebsite.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="css/Custome.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    


     <div class ="container">
       <div class ="form-horizontal">
           
           <br />
           <br />
           <h2>Add New Item</h2>
           <hr />

           <div class ="form-group">
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-2 control-label" Text="Product Name"></asp:Label>
               <div class ="col-md-3">
                   
                   <asp:TextBox ID="txtProduct" CssClass ="form-control" runat="server"></asp:TextBox>


               </div>
           </div>



           <div class ="form-group">&nbsp;<asp:Label ID="Label3" runat="server" CssClass ="col-md-2 control-label" Text="SellingPrice"></asp:Label>
               <div class ="col-md-3">
                   
                   <asp:TextBox ID="txtsellPrice" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>


           


           <div class ="form-group">
               <asp:Label ID="Label5" runat="server" CssClass ="col-md-2 control-label" Text="Category"></asp:Label>
               <div class ="col-md-3">
                   
                   <asp:DropDownList ID="ddlCategory" CssClass ="form-control" runat="server" AutoPostBack="True"></asp:DropDownList>
               </div>
           </div>  




              
           

            <div class ="form-group">
               <asp:Label ID="Label8" runat="server" CssClass ="col-md-2 control-label" Text="Description"></asp:Label>
               <div class ="col-md-3">
                   
                   <asp:TextBox ID="txtDescription" TextMode ="MultiLine"  CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>

            <div class ="form-group">
               <asp:Label ID="Label11" runat="server" CssClass ="col-md-2 control-label" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                   
                   <asp:FileUpload ID="fuImg01" CssClass ="form-control" runat="server" />
               </div>
           </div>

         

          

            <div class ="form-group">
               <asp:Label ID="Label16" runat="server" CssClass ="col-md-2 control-label" Text="Free Delivery"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBox ID="chFD" runat="server" />
               </div>
           </div>


            <div class ="form-group">
               <asp:Label ID="Label18" runat="server" CssClass ="col-md-2 control-label" Text="COD"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBox ID="cbCOD" runat="server" />
               </div>
           </div>


           <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnupdate" CssClass ="btn btn-success " runat="server" Text="Update Product" OnClick="BtnUpdate_Click"  />
                        
                      
                        
                    </div>
                </div>
           <div>

                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="Button1" CssClass ="btn btn-success " runat="server" onClick="btnDelete_Click" Text="Delete Product" OnClientClick="return confirm('Are you sure you want to delete Product')"  />
                        
                      
                        
                    </div>
                </div>
           <div>
                <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red" Font-Size="Medium"></asp:Label>
                        
           </div>

       </div>

    </div>
</asp:Content>
