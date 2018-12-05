﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FoodPantry.Master" AutoEventWireup="true" CodeBehind="ScanCheckout.aspx.cs" Inherits="FoodPantry.ScanCheckout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/scan.css" />
        <script src="js/AddItem.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row header-container">
    <div class="col-md-12">
        <div class="control-label">
            <h1 class="cart-title" style="text-align:center;">Scan Item</h1>
        </div>
    </div>
</div>
    </div>

    

    <div class="container">
        <div class="row d-flex justify-content-center" style="margin-bottom:10px;">
            
            <img id="barcodeimg" class="barcode_image" src="images/barcode scan.png" onclick="viewportclick(); return false;"/>
            
        </div>
        <div class="row d-flex justify-content-center" style="margin-bottom:10px;">
            <div class="alert alert-success alert-dismissible fade show" id="alertpopup" role="alert">
              <h3 class="alert-heading" style="font-weight:600;">Take a thumbnail!</h3>
                <p style="font-weight:500">Tap on the viewport screen to snap the photo.</p>
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>   
            
            <div class="alert alert-success fade show" id="alertpopup2" role="alert">
              <h3 class="alert-heading" style="margin-bottom:0px;">Item Found!</h3>
            </div> 
        </div>
        <div class="container">
            <div class="row d-flex justify-content-between " style="margin-bottom:15px;">
                <span></span>
                <asp:Button ID="btnComplete" runat="server" Text="Complete" Height="40px" Width="150px" CssClass="myBtn align-self-end btn btn-primary" PostBackUrl="~/ShoppingCart.aspx"/>
            </div>
        </div>
        <div class="scanned_container">

            <div class="container">
            <div class="itemRow">
                <div class="row d-flex additemrow justify-content-around" style="margin-top:15px;">
                    <div class="rowItems">
                        <asp:Label ID="rLabel1" runat="server" Text="Preview" Width="60px"></asp:Label>
                    </div>
                    <div class="rowItems">
                        <asp:Label ID="rLabel2" runat="server" Text="UPC #" Width="130px"></asp:Label>
                    </div>
                    <div class="rowItems">
                        <asp:Label ID="rLabel3" runat="server" Text="Category" Width="120px"></asp:Label>
                    </div>
                    <div class="rowItems">
                        <asp:Label ID="rLabel4" runat="server" Text="Quantity" Width="80px"></asp:Label>
                    </div>
                    <div class="rowItems">
                        <asp:Label ID="rLabel5" runat="server" Text="Points" Width="80px"></asp:Label>
                    </div>
                    <div class="rowItems">
                        <asp:Label ID="rLabel7" runat="server" Text="Remove" Width="80px"></asp:Label>
                    </div>
                   
                </div>
            </div>
        </div>
    <hr />
    <div class="">
        <div class="container itemContainer">

             <div id="panel" style="display:none;">
             <div class="itemRow">
                <div class="row d-flex additemrow justify-content-around">
                    <div class="rowItems">
                        <a onclick="thumbnailclick2(); return false;" style="cursor:pointer;"><span id="thumbnail_Place2"><img style="width:30px;" src="images/scan item.jpg"/></span></a>
                    </div>
                    <div class="rowItems">
                        <asp:TextBox ID="rTextBox82" runat="server" Width="150px" CssClass="text-center form-control borderControl itemUPC2"></asp:TextBox>
                    </div>
                    <div class="rowItems">
                        <asp:DropDownList ID="rDropDownList22" runat="server" CssClass="ddDesc form-control text-center">
                            <asp:ListItem>Select Category</asp:ListItem><asp:ListItem>Peanut Butter</asp:ListItem>
                            <asp:ListItem>Coffee</asp:ListItem>
                            <asp:ListItem>Pastry</asp:ListItem>
                            <asp:ListItem>Beverage</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="rowItems">
                        <asp:TextBox ID="rTextBox83" runat="server" TextMode="Number" Width="80px" CssClass="text-center form-control borderControl"></asp:TextBox>
                    </div>
                    <div class="rowItems">
                        <asp:TextBox ID="rTextBox84" runat="server" TextMode="Number" Width="80px" CssClass="text-center form-control borderControl"></asp:TextBox>
                    </div>
                    <div class="rowItems">
                        <button type="button" id="removebtn" class="addItemBtn btn btn-primary"  onclick="removepanel(); return false; ">Remove</button>
                    </div>
                </div>
            </div>
            </div>

            <div id="panel2" >
            <div class="itemRow">
                <div class="row d-flex additemrow justify-content-around">
                    <div class="rowItems">
                        <a onclick="thumbnailclick(); return false;" style="cursor:pointer;"><span id="thumbnail_Place"><img src="images/scan item.jpg" style="width:30px;" /></span></a>
                    </div>
                    <div class="rowItems">
                        <asp:TextBox ID="rtxtUPC" runat="server" Width="150px" CssClass="text-center form-control borderControl noborder">07572048127</asp:TextBox>
                    </div>
                    <div class="rowItems">
                        <asp:DropDownList ID="rddlCategory" runat="server" CssClass="ddDesc form-control text-center noborder">
                            <asp:ListItem>Beverage</asp:ListItem>
                            <asp:ListItem>Peanut Butter</asp:ListItem>
                            <asp:ListItem>Coffee</asp:ListItem>
                            <asp:ListItem>Pastry</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="rowItems">
                        <asp:TextBox ID="rtxtQuant" runat="server" TextMode="Number" Width="80px" CssClass="text-center form-control borderControl">1</asp:TextBox>
                    </div>
                    <div class="rowItems">
                        <asp:TextBox ID="rtxtPoint" runat="server" TextMode="Number" Width="80px" CssClass="text-center form-control borderControl noborder">1</asp:TextBox>
                    </div>
                    <div class="rowItems">
                        <button type="button" id="removebtn2" class="addItemBtn btn btn-primary"  onclick="removepanel2(); return false; ">Remove</button>
                    </div>
                </div>
            </div>
                </div>      
            

        </div>
        </div>

        </div>

        
    </div>

</asp:Content>