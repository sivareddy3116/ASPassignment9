<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="WebAppAssignment9.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="TxtName">Customer Name:</label>
            <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server"
                ControlToValidate="TxtName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidatorName" runat="server"
                ControlToValidate="TxtName" ErrorMessage="Name must have at least 6 characters"
                ForeColor="Red" OnServerValidate="CustomValidatorName_ServerValidate"></asp:CustomValidator>

            <br />

            <label for="TxtMobile">Customer Mobile:</label>
            <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server"
                ControlToValidate="TxtMobile" ErrorMessage="Mobile is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobile" runat="server"
                ControlToValidate="TxtMobile" ErrorMessage="Invalid mobile number"
                ForeColor="Red" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>

            <br />

            <label for="TxtEmail">Email:</label>
            <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server"
                ControlToValidate="TxtEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                ControlToValidate="TxtEmail" ErrorMessage="Invalid email address"
                ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            <br />

            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
            <br />
            <asp:Label ID="LblInfo" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>


