<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2Master.Master" AutoEventWireup="true" CodeBehind="CompletionForm.aspx.cs" Inherits="GreenValleyAuctions.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    COMPLETION FORM
    <br />
    <br />
    <asp:Label ID="lblFinalCost" runat="server" Text="Final Cost: "></asp:Label>
    <asp:TextBox ID="txtFinalCost" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblPaymentReceived" runat="server" Text="Payment Received: "></asp:Label>
    <asp:TextBox ID="txtPaymentReceived" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblExperience" runat="server" Text="Positive/Negative Experience: "></asp:Label>
    <asp:TextBox ID="txtExperience" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblAdditionalExpenses" runat="server" Text="Additional Expenses Incurred: "></asp:Label>
    <asp:TextBox ID="txtAdditonalExpenses" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblReviewFollowUp" runat="server" Text="Review Follow Up: "></asp:Label>
    <asp:TextBox ID="txtReviewFollowUp" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblEmployeesInvolved" runat="server" Text="Employees Involved in Move: "></asp:Label>
    <asp:TextBox ID="txtEmployeesInvolved" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblToAddress" runat="server" Text="To Address: "></asp:Label>
    <asp:TextBox ID="txtToAddress" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
    <br />
    <asp:Label ID="lblFromAddress" runat="server" Text="From Address: "></asp:Label>
    <asp:TextBox ID="txtFromAddress" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblMileage" runat="server" Text="Mileage: "></asp:Label>
    <asp:TextBox ID="txtMileage" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblTrucks" runat="server" Text="Trucks Involved in Service: "></asp:Label>
    <asp:TextBox ID="txtTrucks" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblAdditionalNotes" runat="server" Text="Additional Notes: "></asp:Label>
    <asp:TextBox ID="txtAdditionalNotes" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
    <br />
    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />



</asp:Content>
