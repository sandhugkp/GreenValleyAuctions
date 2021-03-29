<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2Master.Master" AutoEventWireup="true" CodeBehind="InitialContact.aspx.cs" Inherits="GreenValleyAuctions.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    INITIAL CONTACT FORM
    <br />
    <asp:Label ID="lblService" runat="server" Text="Select Type of Service: "></asp:Label>
    <br />
    <asp:CheckBox ID="chkAuction" Text="Auction" runat="server" /><br />
    <asp:CheckBox ID="chkAppraisal" Text="Appraisal" runat="server" /><br />
    <asp:CheckBox ID="chkMove" Text="Move" runat="server" /><br />
    <asp:CheckBox ID="chkConsignment" Text="Consignment" runat="server" /><br />
    <br />
    <asp:Label ID="lblNotes" runat="server" Text="Notes"></asp:Label>
    <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblContactMethod" runat="server" Text="Initial Contact Method: "></asp:Label>
    <br />
    <asp:DropDownList ID="ddlContactMethod" runat="server">
        <asp:ListItem Text="Phone" Value="1"></asp:ListItem>
        <asp:ListItem Text="Email" Value="2"></asp:ListItem>
        <asp:ListItem Text="In person" Value="3"></asp:ListItem>
        <asp:ListItem Text="Text" Value="4"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="lblDownsizing" runat="server" Text="Are you downsizing? "></asp:Label>
    <br />
    <asp:RadioButton ID="rdoDownsizing1" Text="Yes" GroupName="YesOrNo" runat="server" />
    <asp:RadioButton ID="rdoDownsizing2" Text="No" GroupName="YesOrNo" runat="server" />
    <br />
 <asp:Label ID="lblSettling" runat="server" Text="Are you settling an estate? "></asp:Label>
    <br />
    <asp:RadioButton ID="rdoSettling1" Text="Yes" GroupName="Y&N" runat="server" />
    <asp:RadioButton ID="rdoSettling2" Text="No" GroupName="Y&N" runat="server" />
    <br />
 <asp:Label ID="lblMoving" runat="server" Text="Are you moving?"></asp:Label>
    <br />
    <asp:RadioButton ID="rdoMoving1" Text="Yes" GroupName="YN" runat="server" />
    <asp:RadioButton ID="rdoMoving2" Text="No" GroupName="YN" runat="server" />
    <br />
<asp:Label ID="Label1" runat="server" Text="How much do you have to sell? "></asp:Label>
    <asp:TextBox ID="txtSell" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="What do you have to sell? "></asp:Label>
    <asp:TextBox ID="txtWhatSell" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Information gathered after intial conversation: "></asp:Label>
    <br />
    <br />
    <asp:DropDownList ID="ddlPhoneNumber" runat="server">
        <asp:ListItem Text="Home" Value="1"></asp:ListItem>
        <asp:ListItem Text="Cell" Value="2"></asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Email "></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblHearAboutUs" runat="server" Text="How did you about us? "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Select Deadline for Service"></asp:Label>
    <asp:Calendar ID="CalMainCalander" runat="server" OnSelectionChanged="CalMainCalander_SelectionChanged"></asp:Calendar>

    <asp:Label ID="lblFirstStatus" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="lblSecondStatus" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="lblThirdStatus" runat="server" Text=""></asp:Label>
    <asp:Button ID="btnSetToCurrentDate" runat="server" Text="Select Date" OnClick="btnSetToCurrentDate_Click" />
    <br />
    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
    <br />
    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />

</asp:Content>
