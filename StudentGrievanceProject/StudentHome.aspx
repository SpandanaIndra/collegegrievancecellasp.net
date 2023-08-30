<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="StudentGrievanceProject.SudentHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:HyperLink ID="hlLogComplaint" runat="server" NavigateUrl="ComplaintForm.aspx">Log a Complaint</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="hlCompById" runat="server" NavigateUrl="CompDetailsById.aspx">View Complaint status by Complaint ID</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="hlPending" runat="server" NavigateUrl="PendingComplaints.aspx">View Pending Complaints</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="hlSolved" runat="server" NavigateUrl="SolvedComplaints.aspx">View Solved Complaints</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="hlLogout" runat="server" NavigateUrl="~/LoginForm.aspx">Logout</asp:HyperLink>
        </div>
    </form>
</body>
</html>
