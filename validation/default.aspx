<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="validation._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tip Calculator</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server" class="form-horizontal">
        <h1>Tip Calculator</h1>
        <h4>Bill Details</h4>
        <div>
            <asp:Label ID="lblAmount" runat="server" Text="Amount:"></asp:Label>
            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter a number greater
                 than 0"
                ControlToValidate="txtAmount" Type="Double" MinimumValue="0.01" MaximumValue="9999" Display="Dynamic"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required"
                ControlToValidate="txtAmount" CssClass="label-danger" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblPercent" runat="server" Text="Tip %:"></asp:Label>
            <asp:DropDownList ID="ddlPercent" runat="server">
                <asp:ListItem Value=".1" Text="10%"></asp:ListItem>
                <asp:ListItem Value=".15" Text="15%" Selected="True"></asp:ListItem>
                <asp:ListItem Value=".2" Text="20%"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Button ID="btnCalculate" runat="server" CssClass="btn-primary" Text="Calculate Tip" OnClick="btnCalculate_Click" />

        <asp:Panel ID="pnlResult" runat="server" Visible="false">
            <h4>Totals</h4>
            <div>
                <asp:Label ID="Label1" runat="server" Text="Tip Amount: "></asp:Label>
                <asp:Label ID="lblTip" runat="server"></asp:Label>
            </div>
            <div>
                <asp:Label ID="Label2" runat="server" Text="Total: "></asp:Label>
                <asp:Label ID="lblTotal" runat="server"></asp:Label>

            </div>
        </asp:Panel>

    </form>
        </div>
</body>
</html>
