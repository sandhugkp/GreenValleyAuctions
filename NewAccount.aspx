﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2Master.Master" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="GreenValleyAuctions.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Table ID="NewAccountTble" runat="server">
            <asp:TableCell>
                <asp:Label ID="lblContactMethod" runat="server" Text="Conact Method: "></asp:Label>
            </asp:TableCell>
               <asp:TableCell>
        </asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblDescriptionOfNeeds" runat="server" Text="Description Of Needs: "></asp:Label>
            </asp:TableCell>
               <asp:TableCell>
        </asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblAdditionalNotes" runat="server" Text="Additional Notes: "></asp:Label>
            </asp:TableCell>
               <asp:TableCell>
        </asp:TableRow>
           <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblContactDate" runat="server" Text="Contact Date: "></asp:Label>
            </asp:TableCell>
               <asp:TableCell>
        </asp:TableRow>
          <asp:TableRow>
              </asp:TableRow>
         </asp:Table>
      
    <asp:Table ID="CreateAccountTble" runat="server">
             <asp:Label ID="lblStatus" runat="server" Text="" Font-Bold="true" ForeColor="Yellow"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="HomeBtn" runat="server" Text="Go to Login" Visible ="false" OnClick="HomeBtn_Click"/>
            </asp:TableCell>
        </asp:TableRow>

</asp:Content>