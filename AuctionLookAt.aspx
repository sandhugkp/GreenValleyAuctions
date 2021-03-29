<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuctionLookAt.aspx.cs" Inherits="Lab3.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Auction Look At Form</h1>
    <form id="AuctionLookAt" runat="server">
        <div>
            <asp:Label ID="lblAuctionDestAddress" runat="server" Text="Auctions: " style="font-size: small"></asp:Label>
            <asp:DropDownList ID="ddlLiveList" runat="server" DataSourceID="datasrcAuctionDestAddress" DataTextField="Destination"
                DataValueField="AuctionID" AutoPostBack="true" OnSelectedIndexChanged="ddlLiveList_SelectedIndexChanged" ></asp:DropDownList>
            <br />
            <br />

            <asp:Label ID="lblPhotoSpot" runat="server" Text="Photo Spot: "></asp:Label>
            <asp:TextBox ID="txtPhotoSpot" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPS" ControlToValidate="txtPhotoSpot" runat="server" Text="Field cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblTruckAccessibility" runat="server" Text="Truck Accessibility: "></asp:Label>
            <asp:TextBox ID="txtTruckAccessibility" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTA" ControlToValidate="txtTruckAccessibility" runat="server" Text="Field cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblSuppliesNeeded" runat="server" Text="Supplies Needed: "></asp:Label>
            <asp:TextBox ID="txtSuppliesNeeded" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSN" ControlToValidate="txtSuppliesNeeded" runat="server" Text="Field cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblBoxesNumberAndType" runat="server" Text="Boxes # and Type"></asp:Label>
            <asp:TextBox ID="txtBoxesNumberAndType" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBN" ControlToValidate="txtBoxesNumberAndType" runat="server" Text="Field cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblCrewMembers" runat="server" Text="Crew Members: "></asp:Label>
            <asp:TextBox ID="txtCrewMembers" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCM" ControlToValidate="txtCrewMembers" runat="server" Text="Field cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblNumberOfTrucks" runat="server" Text="Number of Trucks"></asp:Label>
            <asp:TextBox ID="txtNumberOfTrucks" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNT" ControlToValidate="txtNumberOfTrucks" runat="server" Text="Field cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblNeedStatus" runat="server" Text="NeedStatus"></asp:Label>
            <br />
            <asp:RadioButtonList ID="rblNeedStatus" runat="server">
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>Inactive</asp:ListItem>
            </asp:RadioButtonList>
           <br />
           <br />
           <asp:Button ID="btnUpdateAuctionLookAt" runat="server" Text="Update Auction Look At Form" OnClick="btnUpdateAuctionLookAt_Click" />
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="AuctionPickupbtn" runat="server" Text="Redirect To Auction Pickup Form" OnClick="AuctionPickupbtn_Click" />
            
        </div>
        </form>
        <asp:SqlDataSource ID="datasrcAuctionDestAddress" runat="server" ConnectionString="<%$ ConnectionStrings:GreenValleyAuctionsConnectionString14 %>"
         SelectCommand="Select AuctionID, Destination from Auction"></asp:SqlDataSource>
</body>
</html>
