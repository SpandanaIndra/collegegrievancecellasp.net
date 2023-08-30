<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HODHome.aspx.cs" Inherits="StudentGrievanceProject.HODHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
          div{
            width:40%;
            height:60%;
            margin:auto;
        }
        .c1:hover{
            
            font-size:x-large;
            color:green;
        }
    </style>
</head>
<body>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
        <div>
            Head Of The Department..<br />
            <br />
            <br />
            <asp:HyperLink CssClass="c1" ID="hlViewAllComp" runat="server" NavigateUrl="~/AllComplaints.aspx">View All Complaints</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink CssClass="c1" ID="hlSolve" runat="server" NavigateUrl="~/PendingComplaintsSolve.aspx">Solve a Complaint</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink CssClass="c1" ID="hlLogout" runat="server" NavigateUrl="~/LoginForm.aspx">Logout</asp:HyperLink>
        </div>
    </form>
</body>
</html>
