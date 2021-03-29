<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2Master.Master" AutoEventWireup="true" CodeBehind="AuctionPickUp.aspx.cs" Inherits="GreenValleyAuctions.AuctionPickUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Label ID="lblAuctionPickUp" runat="server" Text="Auction Pick Up"></asp:Label>
    <br />
    <br />
    <asp:DropDownList ID="ddlSelectCustomer" runat="server" DataSourceID="datascSelectCustomer" DataTextField="CustomerName"
                DataValueField="CustomerID" AutoPostBack="true" OnSelectedIndexChanged="ddlSelectCustomer_SelectedIndexChanged"></asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="gvCustomerInfo" runat="server"></asp:GridView>
    <br />
    <asp:Label ID="lblPotentialDates" runat="server" Text="Potential Auction Service Dates"></asp:Label>
    <asp:Table ID="tblPotentialDates" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblBringIn" runat="server" Text="Bring In Date: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtBringIn" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPickUp" runat="server" Text="Pick Up Date: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPickUp" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblLookAt" runat="server" Text="Look At Date: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtLookAt" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblApprasial" runat="server" Text="Apprasial Date: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtApprasial" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:Label ID="lblConfirmedDates" runat="server" Text="Confirmed Auction Services Dates"></asp:Label>
    <asp:Table ID="tblConfirmedDates" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblBringInConfirmed" runat="server" Text="Confirmed Bring In Date: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtBringInConfirmed" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPickUpConfirmed" runat="server" Text="Confirmed Pick Up Date: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPickUpConfirmed" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblLookAtConfirmed" runat="server" Text="Confirmed Look At Date: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtLookAtConfirmed" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblApprasialConfirmed" runat="server" Text="Confirmed Apprasial Date: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtApprasialConfirmed" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblSellConfirmed" runat="server" Text="Confirmed Sell Date: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtSellConfirmed" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:Table ID="tblStorageLocation" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblStorageLocation" runat="server" Text="Storage Location (if not being sold immediately): "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtStorageLocation" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table> 
    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
    <asp:SqlDataSource ID="datascSelectCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:GreenValleyAuctions %>"
            SelectCommand="Select CustomerID, CustomerName from Customer"></asp:SqlDataSource>
</asp:Content>
