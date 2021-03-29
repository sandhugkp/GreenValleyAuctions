<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2Master.Master" AutoEventWireup="true" CodeBehind="ServiceOrderForm.aspx.cs" Inherits="GreenValleyAuctions.ServiceOrderForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Label ID="lblServiceOrderForm" runat="server" Text="Service Order Form"></asp:Label>
    <br />
    <br />
     <asp:DropDownList ID="ddlSelectCustomer" runat="server" DataSourceID="datascSelectCustomer" DataTextField="CustomerName"
                DataValueField="CustomerID" AutoPostBack="true" OnSelectedIndexChanged="ddlSelectCustomer_SelectedIndexChanged"></asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="gvCustomerInfo" runat="server"></asp:GridView>
    <br />
    <br />
    <asp:Table ID="tblServices" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblMainServices" runat="server" Text="Main Services: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="ddlMainServices" runat="server">
                    <asp:ListItem Text="Look At" Value="Look At"></asp:ListItem>
                    <asp:ListItem Text="Pick Up" Value="Pick Up"></asp:ListItem>
                    <asp:ListItem Text="Auction" Value="Auction"></asp:ListItem>
                    <asp:ListItem Text="Apprasial" Value="Apprasial"></asp:ListItem>
                    <asp:ListItem Text="Move" Value="Move"></asp:ListItem>
                    <asp:ListItem Text="Consignment" Value="Consignment"></asp:ListItem>
                    <asp:ListItem Text="Combination" Value="Combination"></asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="lblCombination" runat="server" Text="If Combination, list all services: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtCombination" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:Label ID="lblPotentialDates" runat="server" Text="List potential dates and times for each service needed
        (If a combination of services is needed, fill in respective boxes)"></asp:Label>
    <asp:Table ID="tblPotentialDates" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblLookAt" runat="server" Text="Look At: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtLookAtDate1" runat="server" Text="Insert date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtLookAtTime1" runat="server" Text="Insert time"></asp:TextBox>
            </asp:TableCell>
                <asp:TableCell>
                <asp:TextBox ID="txtLookAtDate2" runat="server" Text="Insert date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtLookAtTime2" runat="server" Text="Insert time"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPickUp" runat="server" Text="Pick Up: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPickUpDate1" runat="server" Text="Insert date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPickUpTime1" runat="server" Text="Insert time"></asp:TextBox>
            </asp:TableCell>
                <asp:TableCell>
                <asp:TextBox ID="txtPickUpDate2" runat="server" Text="Insert date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPickUpTime2" runat="server" Text="Insert time"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblAuction" runat="server" Text="Auction: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAuctionDate1" runat="server" Text="Insert date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAuctionTime1" runat="server" Text="Insert time"></asp:TextBox>
            </asp:TableCell>
                <asp:TableCell>
                <asp:TextBox ID="txtAuctionDate2" runat="server" Text="Insert date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAuctionTime2" runat="server" Text="Insert time"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblApprasial" runat="server" Text="Apprasial: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAppDate1" runat="server" Text="Insert date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAppTime1" runat="server" Text="Insert time"></asp:TextBox>
            </asp:TableCell>
                <asp:TableCell>
                <asp:TextBox ID="txtAppDate2" runat="server" Text="Insert date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAppTime2" runat="server" Text="Insert time"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblMove" runat="server" Text="Move: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMoveDate1" runat="server" Text="Insert date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMoveTime1" runat="server" Text="Insert time"></asp:TextBox>
            </asp:TableCell>
                <asp:TableCell>
                <asp:TextBox ID="txtMoveDate2" runat="server" Text="Insert date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMoveTime2" runat="server" Text="Insert time"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblConsignment" runat="server" Text="Consignment: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtConsignmentDate1" runat="server" Text="Insert date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtConsignmentTime1" runat="server" Text="Insert time"></asp:TextBox>
            </asp:TableCell>
                <asp:TableCell>
                <asp:TextBox ID="txtConsignmentDate2" runat="server" Text="Insert date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtConsignmentTime2" runat="server" Text="Insert time"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:Label ID="lblFinalDates" runat="server" Text="List final dates and times for respective services that are needed"></asp:Label>
    <asp:Table ID="tblFinalDates" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblLookAtFinal" runat="server" Text="Look At: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtLookAtDate" runat="server" Text="Insert Date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtLookAtTime" runat="server" Text="Insert Time"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPickUpFinal" runat="server" Text="Pick Up: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPickUpDate" runat="server" Text="Insert Date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPickUpTime" runat="server" Text="Insert Time"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblAuctionFinal" runat="server" Text="Auction: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAuctionDate" runat="server" Text="Insert Date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAuctionTime" runat="server" Text="Insert Time"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblApprasialFinal" runat="server" Text="Apprasial: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAppDate" runat="server" Text="Insert Date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAppTime" runat="server" Text="Insert Time"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblMoveFinal" runat="server" Text="Move: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMoveDate" runat="server" Text="Insert Date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMoveTime" runat="server" Text="Insert Time"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblConsignmentFinal" runat="server" Text="Consignment: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtConsignmentDate" runat="server" Text="Insert Date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtConsignmentTime" runat="server" Text="Insert Time"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:Label ID="lblAddedServices" runat="server" Text="Added Services"></asp:Label>
    <asp:Table ID="tblAddedServices" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblAddServices" runat="server" Text="Select additional services that are needed: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:CheckBoxList ID="cblAddServices" runat="server">
                    <asp:ListItem Text="Storage" Value="Storage"></asp:ListItem>
                    <asp:ListItem Text="Cleaning" Value="Cleaning"></asp:ListItem>
                    <asp:ListItem Text="Trash Removal" Value="Trash Removal"></asp:ListItem>
                </asp:CheckBoxList>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <asp:Label ID="lblAdditionalCharges" runat="server" Text="Additional Charges (if applicable)"></asp:Label>
    <asp:Table ID="tblAdditionalCharges" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPickUpFee" runat="server" Text="Pick Up Fee: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPickUpFee" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblStorageFee" runat="server" Text="Storage Fee: "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtStorageFee" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="AuctionScheduling" runat="server" Text="Redirect To Auction Scheduling Form" OnClick="AuctionScheduling_Click" />
    <asp:SqlDataSource ID="datascSelectCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:GreenValleyAuctions %>"
            SelectCommand="Select CustomerID, CustomerName from Customer"></asp:SqlDataSource>

&nbsp;&nbsp; 

</asp:Content>
