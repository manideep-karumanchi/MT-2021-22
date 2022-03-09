<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdRotatorExample.aspx.cs" Inherits="RichControls.AdRotatorExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AdRotator ID="AdRotator1" Height="200px" Width="100%" runat="server" AdvertisementFile="~/Ads.xml" target="_blank" KeywordFilter="ECommerce"/>
    </div>
    </form>
</body>
</html>
