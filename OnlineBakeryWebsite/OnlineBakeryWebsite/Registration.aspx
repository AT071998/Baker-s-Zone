<%@ Page Title="" Language="C#"    MasterPageFile="~/MasterPageLogin.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineBakeryWebsite.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="css/Custome.css" rel="stylesheet" />
    <style>
        .auto-style1{
            font-family:'Times New Roman', Times, serif;
            font-size:20px;
        }

    </style>
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <asp:Label ID="Label2" runat="server" BorderColor="Black" Font-Bold="True" Font-Overline="False" Font-Size="Large" Font-Underline="True" ForeColor="Red" Text="We Offer Delivery Only to the Places in Karwar. "></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="Label"><h1 style="text-align:center; color:black; font:larger">USER REGISTRATION PAGE</h1></asp:Label>
    
    <table style="width:80%; text-align:center; margin-top: 11px; margin-left:140px; margin-right:40px;">
        <tr>
             
               <td class="auto-style1" >Enter Your Name</td>
                <td class="auto-style1" >
                    
                            <asp:TextBox ID="txtfname" runat="server" CssClass="form-control" ></asp:TextBox>
                        
                    <br />
                </td>
            <td id="lblTxt">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="Enter Your FullName" ForeColor="Red" ControlToValidate="txtfname" ></asp:RequiredFieldValidator>
                    &nbsp;</td>
                    
            
        </tr>
        
         <tr>
             
               <td class="auto-style1" >Enter Username</td>
                <td class="auto-style1" >
                    
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" ></asp:TextBox>
                     <br />
                        
                </td>
                <td>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter the UserName" ForeColor="Red" ControlToValidate="txtUserName" ></asp:RequiredFieldValidator>
                    </td>
                    
            
        </tr>
       <tr>
                <td class="auto-style1" >Enter your Mobile Number</td>
                <td class="auto-style1" ><asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"></asp:TextBox> <br /></td>
                               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                   ControlToValidate="txtmobile" ErrorMessage="Enter Your Mobile Number" ForeColor="Red" 
                                   SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                               <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                   ControlToValidate="txtmobile" ErrorMessage="Invalid Mobile Number" ForeColor="Red" 
                                   MaximumValue="9999999999" MinimumValue="1000000000" SetFocusOnError="True" 
                                   Type="Double" Display="Dynamic"></asp:RangeValidator></td>
                <td>&nbsp;</td>
            </tr>
           
              <tr>
                <td class="auto-style1" >Enter the Address</td>
                <td class="auto-style1" > <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" TextMode="MultiLine" 
                                   ></asp:TextBox> <br />
                                </td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"      ControlToValidate="txtcity" ErrorMessage="Enter your address" ForeColor="Red" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator></td>
            </tr>
             <tr>
                <td class="auto-style1" >Enter the City<br /><asp:Label ID="Label3" runat="server" BorderColor="Black" Font-Bold="True" Font-Overline="False" Font-Size="X-Small" Font-Underline="True" ForeColor="Red" Text="We Offer Delivery Only to the Places in Karwar. "></asp:Label>
                 </td>
                <td class="auto-style1"> 
                    <asp:DropDownList ID="ddlList" runat="server" CssClass="form-control">
                        <asp:ListItem Value="Select"></asp:ListItem>
                        <asp:ListItem Value="Karwar"></asp:ListItem>
                        
                    </asp:DropDownList>
                     <br />
                               
                                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlList" ErrorMessage="Field cannot be Empty!!" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

                             </td>
            </tr>

           

            

             <tr>
                <td class="auto-style1">Enter the Email Address</td>
                <td class="auto-style1"> <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                                </td>
                <td ><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                   ControlToValidate="txtemail" ErrorMessage="This Field is required!!!" ForeColor="Red" 
                                   SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                   ControlToValidate="txtemail" ErrorMessage="Invalid email" ForeColor="Red" 
                                   SetFocusOnError="True" 
                                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator></td>
            </tr>
              <tr>
                <td class="auto-style1">Password</td>
                <td class="auto-style1"> <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" 
                                    TextMode="Password"></asp:TextBox>
                                <br />
                                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                   ControlToValidate="txtpass" ErrorMessage="Enter the Password" ForeColor="Red" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator></td>
            </tr>
             <tr>
                <td class="auto-style1">Confirm Password</td>
                <td class="auto-style1"> <asp:TextBox ID="txtconfirmpass" runat="server" CssClass="form-control" 
                                    TextMode="Password"></asp:TextBox>
                                <br />
                                </td>
                <td><asp:CompareValidator ID="CompareValidator1" runat="server" 
                                   ControlToCompare="txtpass" ControlToValidate="txtconfirmpass" 
                                   ErrorMessage="not same" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtconfirmpass" Display="Dynamic" ErrorMessage="Enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>

            </tr>
        <tr>
            <td class="auto-style1">Choose a profile Image</td>
            <td class="auto-style1"><asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" /> <br /></td>
      </tr>
            </table>
 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style1">Already Registered?Please Login</span>
                               <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                   Font-Strikeout="False" Font-Underline="True" ForeColor="Red" 
                                   PostBackUrl="~/HomeLogin.aspx">HERE</asp:LinkButton>&nbsp;&nbsp;
 
  
  
   
  
     <asp:Button ID="btn_Register" runat="server" CssClass="btn btn-success form-control" 
                                   Text="Register Now" onclick="Btn_Register" style="left: 62px; top: -16px; width: 237px; height: 55px;" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
 
        <br />&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblMsg" runat="server" Font-Size="Medium" Font-Bold="True" ForeColor="Green" CssClass="text-center"></asp:Label>



</asp:Content>
