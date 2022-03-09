<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidationControls.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        Name:     <asp:TextBox ID="tbname" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="nameValidator" runat="server" Text="*" ErrorMessage="Enter Name" ControlToValidate="tbname" ></asp:RequiredFieldValidator><br />
        Regd. No.:     <asp:TextBox ID="tbregdno" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="regdnoValidator" runat="server" Text="*" ErrorMessage="Enter Regd. No." ControlToValidate="tbregdno" ></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="regdnoValidator1" runat="server" ErrorMessage="Regd. no. is not in correct format." ControlToValidate="tbregdno" ValidationExpression="[YyLl]\d{2}[Aa](CE|ce|CS|cs)\d{3}"></asp:RegularExpressionValidator><br />
        Confirm Regd. No.:     <asp:TextBox ID="tbcregdno" runat="server"></asp:TextBox><asp:CompareValidator ID="cregdnoValidator" runat="server" ErrorMessage="Regd. No. and Confirm Regd. No. must be same" ControlToValidate="tbcregdno" ControlToCompare="tbregdno"></asp:CompareValidator><br />
        Age:     <asp:TextBox ID="tbage" runat="server"></asp:TextBox><asp:RangeValidator ID="ageValidator" runat="server" ErrorMessage="Age must be in  the range of 18 to 50" ControlToValidate="tbage" MinimumValue="18" MaximumValue="50"></asp:RangeValidator><br />
        Branch:     <asp:TextBox ID="tbbranch" runat="server"></asp:TextBox><asp:CustomValidator ID="branchValidator" runat="server" ErrorMessage="Branch should be valid BEC branch" ControlToValidate="tbbranch" OnServerValidate="branchValidator_ServerValidate"></asp:CustomValidator>
        <br />
        <br />
        <asp:Button ID="cmdsubmit" runat="server" OnClick="cmdsubmit_Click" Text="Submit" />
        <asp:Button ID="cmdclear" runat="server" OnClick="cmdclear_Click" Text="Clear" CausesValidation="false" />
        <br />

    </div>
    </form>
</body>
</html>
