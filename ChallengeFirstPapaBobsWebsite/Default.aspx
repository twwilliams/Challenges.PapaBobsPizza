<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeFirstPapaBobsWebsite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style2 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style1" ImageUrl="~/img/PapaBob.png" />
                <span class="auto-style1">Papa Bob&rsquo;s Pizza and Software</span></h1>
        </div>
        <asp:RadioButton ID="babyBobRadioButton" runat="server" Text="Baby Bob Size (10&quot;) &ndash; $10.00" GroupName="Size" />
        <br />
        <asp:RadioButton ID="mamaBobRadioButton" runat="server" Text="Mama Bob Size (13&quot;) &ndash; $13.00" GroupName="Size" />
        <br />
        <asp:RadioButton ID="papaBobRadioButton" runat="server" Text="Papa Bob Size (16&quot;) &ndash; $16.00" GroupName="Size" />
        <br />
        <br />
        <asp:RadioButton ID="thinCrustRadioButton" runat="server" Text="Thin Crust" GroupName="Crust" />
        <br />
        <asp:RadioButton ID="deepDishRadioButton" runat="server" Text="Deep Dish (+$2.00)" GroupName="Crust" />
        <br />
        <br />
        <asp:CheckBox ID="pepperoniCheckBox" runat="server" Text="Pepperoni (+$1.50)" />
        <br />
        <asp:CheckBox ID="onionsCheckBox" runat="server" Text="Onions (+$0.75)" />
        <br />
        <asp:CheckBox ID="greenPeppersCheckBox" runat="server" Text="Green Peppers (+$0.50)" />
        <br />
        <asp:CheckBox ID="redPeppersCheckBox" runat="server" Text="Red Peppers (+$0.75)" />
        <br />
        <asp:CheckBox ID="anchoviesCheckBox" runat="server" Text="Anchovies (+$2.00)" />
        <br />
        <br />
        <h2 class="auto-style1">Papa Bob&rsquo;s <span class="auto-style2">Special Deal</span></h2>
        <p>Save $2.00 when you add Pepperoni, Green Peppers, and Anchovies OR Pepperoni, Red Peppers, and Onions to your pizza.</p>
        <p>
            <asp:Button ID="purchaseButton" runat="server" Text="Purchase" OnClick="purchaseButton_Click" />
        </p>
        <p>
            <asp:Label ID="totalLabel" runat="server"></asp:Label>
        </p>
        <p>Sorry. At this time, you can only order one pizza online and for pickup only. We need a better web site!</p>
    </form>
</body>
</html>
