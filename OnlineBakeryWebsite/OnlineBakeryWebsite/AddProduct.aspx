<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None"  MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="OnlineBakeryWebsite.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <link href="css/Custome.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <style>
        .autostyle-1{
            font-family:'Times New Roman', Times, serif;
            font-size:18px;
        }

    </style>

     <div class ="container">
       <div class ="form-horizontal">
           
           <br />
           <br />
           <h2>Add New Item</h2>
           <hr />

           <div class ="form-group">
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-2 control-label autostyle-1" Text="Product Name"></asp:Label>
               <div class ="col-md-3">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtProduceName" ErrorMessage="Field Cannot Be Empty!" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:TextBox ID="txtProduceName" CssClass ="form-control" runat="server"></asp:TextBox>


               </div>
           </div>



           <div class ="form-group">
               <asp:Label ID="Label3" runat="server" CssClass ="col-md-2 control-label autostyle-1" Text="SellingPrice(In Rupees)"></asp:Label>
               <div class ="col-md-3">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsellPrice" ErrorMessage="Field Cannot Be Empty!" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:TextBox ID="txtsellPrice" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>


           


           <div class ="form-group">
               <asp:Label ID="Label5" runat="server" CssClass ="col-md-2 control-label autostyle-1" Text="Category"></asp:Label>
               <div class ="col-md-3">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlCategory" ErrorMessage="Field Cannot Be Empty!" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:DropDownList ID="ddlCategory" CssClass ="form-control" runat="server"></asp:DropDownList>
               </div>
           </div>  




              
           

            <div class ="form-group">
               <asp:Label ID="Label8" runat="server" CssClass ="col-md-2 control-label autostyle-1" Text="Description"></asp:Label>
               <div class ="col-md-3">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDescription" ErrorMessage="Field Cannot Be Empty!" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:TextBox ID="txtDescription" TextMode ="MultiLine"  CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>

            <div class ="form-group">
               <asp:Label ID="Label11" runat="server" CssClass ="col-md-2 control-label autostyle-1" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="fuImg01" ErrorMessage="Field Cannot Be Empty!" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:FileUpload ID="fuImg01" CssClass ="form-control" runat="server" />
               </div>
           </div>

         

          

            <div class ="form-group">
               <asp:Label ID="Label16" runat="server" CssClass ="col-md-2 control-label autostyle-1" Text="Free Delivery"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBox ID="chFD" runat="server" />
               </div>
           </div>


            <div class ="form-group">
               <asp:Label ID="Label18" runat="server" CssClass ="col-md-2 control-label autostyle-1" Text="COD"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBox ID="cbCOD" runat="server" />
               </div>
           </div>


           <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAdd" CssClass ="btn btn-success " runat="server" Text="Add Product" OnClick="btnAdd_Click" Font-Bold="True" Font-Size="Medium"  />
                        
                      
                        
                    </div>
                </div>
           <div>
                <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red" Font-Size="Medium"></asp:Label>
                        
           </div>

       </div>

    </div>
</asp:Content>
