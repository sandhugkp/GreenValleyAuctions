<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuctionScheduling.aspx.cs" Inherits="Lab3.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Auction Scheduling</h1>
    <form id="AuctionScheduling" runat="server">
        <div>
            <asp:Label ID="lblAuctionDestAddress" runat="server" Text="Auctions: " style="font-size: small"></asp:Label>
            <asp:DropDownList ID="ddlLiveLst" runat="server" DataSourceID="datasrcAuctionDestAddress" DataTextField="Destination"
                DataValueField="AuctionID" AutoPostBack="true" OnSelectedIndexChanged="ddlLiveLst_SelectedIndexChanged" ></asp:DropDownList>
            <br />
            <br />

            <asp:Label ID="lblLookAtDate" runat="server" Text="Insert Look at Date (YYYY-MM-DD): "></asp:Label>
            <asp:TextBox ID="txtLookAtDate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLA" ControlToValidate="txtLookAtDate" runat="server" Text="Field cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label ID="lblBringInDate" runat="server" Text="Insert Bring in Date (YYYY-MM-DD): "></asp:Label>
            <asp:TextBox ID="txtBringInDate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBI" ControlToValidate="txtBringInDate" runat="server" Text="Field cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label ID="lblPickUpDate" runat="server" Text="Insert Pick up Date (YYYY-MM-DD): "></asp:Label>
            <asp:TextBox ID="txtPickUpDate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPU" ControlToValidate="txtPickUpDate" runat="server" Text="Field cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnUpdateDate" runat="server" Text="Update Dates" OnClick="btnUpdateDate_Click1" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="AuctionLookbtn" runat="server" Text="Redirect To Auction Form" OnClick="AuctionLookbtn_Click" />

        </div>

            <asp:SqlDataSource ID="datasrcAuctionDestAddress" runat="server" ConnectionString="<%$ ConnectionStrings:GreenValleyAuctionsConnectionString14 %>"
                SelectCommand="Select AuctionID, Destination from Auction"></asp:SqlDataSource>
    </form>
</body>
</html>
