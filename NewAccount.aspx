<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2Master.Master" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="GreenValleyAuctions.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Table ID="NewAccountTble" runat="server">        <asp:TableRow>            <asp:TableCell>                <asp:Label ID="NameLbl" runat="server" Text="Customer Name: "></asp:Label>            </asp:TableCell>            <asp:TableCell>                <asp:TextBox ID="NameTxt" runat="server"></asp:TextBox>            </asp:TableCell>        </asp:TableRow>         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblContactMethod" runat="server" Text="Conact Method: "></asp:Label>
            </asp:TableCell>
               <asp:TableCell>                <asp:TextBox ID="txtContactMethod" runat="server"></asp:TextBox>            </asp:TableCell>
        </asp:TableRow>        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblDescriptionOfNeeds" runat="server" Text="Description Of Needs: "></asp:Label>
            </asp:TableCell>
               <asp:TableCell>                <asp:TextBox ID="txtDescriptionOfNeeds" runat="server"></asp:TextBox>            </asp:TableCell>
        </asp:TableRow>           <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblAdditionalNotes" runat="server" Text="Additional Notes: "></asp:Label>
            </asp:TableCell>
               <asp:TableCell>                <asp:TextBox ID="txtAdditionalNotes" runat="server"></asp:TextBox>            </asp:TableCell>
        </asp:TableRow>        <asp:TableRow>            <asp:TableCell>                <asp:Label ID="EmailLbl" runat="server" Text="Email: "></asp:Label>            </asp:TableCell>            <asp:TableCell>                <asp:TextBox ID="EmailTxt" runat="server"></asp:TextBox>            </asp:TableCell>        </asp:TableRow>
           <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblContactDate" runat="server" Text="Contact Date: "></asp:Label>
            </asp:TableCell>
               <asp:TableCell>                <asp:TextBox ID="txtContactDate" runat="server"></asp:TextBox>            </asp:TableCell>
        </asp:TableRow>
          <asp:TableRow>            <asp:TableCell>                <asp:Label ID="Label1" runat="server" Text="Current Address: "></asp:Label>            </asp:TableCell>            <asp:TableCell>                <asp:TextBox ID="txtCurrentAddress" runat="server"></asp:TextBox>            </asp:TableCell>        </asp:TableRow>         <asp:TableRow>            <asp:TableCell>                <asp:Label ID="lblPhone" runat="server" Text="Phone: "></asp:Label>            </asp:TableCell>            <asp:TableCell>                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>            </asp:TableCell>        </asp:TableRow>         <asp:TableRow>            <asp:TableCell>                <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>            </asp:TableCell>            <asp:TableCell>                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>            </asp:TableCell>
              </asp:TableRow>
         </asp:Table>
      
    <asp:Table ID="CreateAccountTble" runat="server">        <asp:TableRow>            <asp:TableCell>                <asp:Button ID="CreateAccountBtn" runat="server" Text="Create Account" OnClick="CreateAccountBtn_Click" />            </asp:TableCell>            <asp:TableCell>
             <asp:Label ID="lblStatus" runat="server" Text="" Font-Bold="true" ForeColor="Yellow"></asp:Label>
            </asp:TableCell>        </asp:TableRow>        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="HomeBtn" runat="server" Text="Go to Login" Visible ="false" OnClick="HomeBtn_Click"/>
            </asp:TableCell>
        </asp:TableRow>    </asp:Table>

</asp:Content>
