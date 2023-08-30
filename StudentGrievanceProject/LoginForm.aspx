<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="StudentGrievanceProject.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            width: 50%;
            margin:auto;
        }
        .auto-style4 {
            width: 183px;
        }
        .auto-style5 {
            width: 183px;
            height: 43px;
        }
        .auto-style6 {
            height: 43px;
        }
        .auto-style7 {
            font-size: large;
        }
        body{
            background-image:url("/Images/collegeBg.jpg");
             
     
background-repeat:no-repeat;
background-attachment:fixed;
background-size:100% 100%;
display:flex;
justify-content:center;
margin-top:65px;


        }
        form{
            color:black;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif,'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
              background-image:url("/Images/BgimageForm.jpg");
              width:35%;
              height:40%;
              border-radius:25px;

        }
        div{
            display:flex;
            justify-content:center;
        }
        #Result{
            color:red;
        }
    </style>
     <script language="javascript" type="text/javascript">
         function validate() {
             if (document.getElementById("txtUId").value == "") {
                 alert("Name must not be blank");
                 document.getElementById("txtUId").focus();
                 return false;
             }
             if (document.getElementById("txtPwd").value == "") {
                 alert("Name must not be blank");
                 document.getElementById("txtPwd").focus();
                 return false;
             }
     </script>
    
</head>
    
<body >
  
    
    <form id="form1" runat="server">

          <div>
        <h2> Welcome To College Grievance Cell</h2>
    </div>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            <strong>Login Form</strong></p>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4"><strong>User ID</strong></td>
                <td>
                    <strong>
                    <asp:TextBox ID="txtUId" runat="server"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong></strong></td>
                <td><strong></strong></td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>PassWord</strong></td>
                <td>
                    <strong>
                    <asp:TextBox ID="txtPwd" TextMode="Password" runat="server"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong></strong></td>
                <td><strong></strong></td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Login As</strong></td>
                <td><strong>
                    <asp:DropDownList ID="ddlLoginAs" runat="server">
                        <asp:ListItem>SelectAnyOne</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>HOD</asp:ListItem>
                    </asp:DropDownList>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <strong>
                    <asp:Button ID="btn_Login" runat="server" Text="Login" CssClass="auto-style7" OnClick="btn_Login_Click" Width="88px" OnClientClick="return confirm('Click ok to Login..!')"/>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong></strong></td>
                <td><strong></strong></td>
            </tr>
            <tr>
                <td class="auto-style4"><strong></strong></td>
                <td><strong>Are you New..??<asp:HyperLink ID="hlSignIn" runat="server" NavigateUrl="SignIn.aspx">PleaseSignUpHere..!!</asp:HyperLink>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="Result" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
