<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiView.aspx.cs" Inherits="RichControls.MultiView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:MultiView ID="GreetingCardViews" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                Choose a Background Color:<br />
                <asp:DropDownList ID="lstBackColor" runat="server" Width="190px" Height="25px" AutoPostBack="true" OnSelectedIndexChanged="UpdateUI"></asp:DropDownList><br />
                Choose a Foreground Color:<br />
                <asp:DropDownList ID="lstForeColor" runat="server" Width="190px" Height="25px" AutoPostBack="true" OnSelectedIndexChanged="UpdateUI"></asp:DropDownList><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdftos" runat="server" Text="Next>" CommandName="SwitchViewByID" CommandArgument="View2"/>
            </asp:View>
            <asp:View ID="View2" runat="server">
                Choose border style:<br />
                <asp:RadioButtonList ID="lstBorderStyle" runat="server" Width="190px" Height="100px" AutoPostBack="true" OnSelectedIndexChanged="UpdateUI"></asp:RadioButtonList><br />
                <asp:CheckBox ID="chkDefaultPic" runat="server" Text="Add Default Picture" AutoPostBack="true" OnCheckedChanged="UpdateUI" /><br />
                <asp:Button ID="cmds2f" runat="server" Text="<Prev" CommandName="SwitchViewByID" CommandArgument="View1"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmd2tot" runat="server" Text="Next>" CommandName="SwitchViewByID" CommandArgument="View3"/>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:DropDownList ID="lstFontNames" runat="server" Width="190px" Height="25px" AutoPostBack="true" OnSelectedIndexChanged="UpdateUI"></asp:DropDownList><br />
                Specify a +ve numeric font size:<br />
                <asp:TextBox ID="txtFontSize" runat="server"></asp:TextBox><br />
                Enter the greeting text:<br />
                <asp:TextBox ID="txtGreeting" runat="server" Width="190px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="cmdttos" runat="server" Text="<Prev" CommandName="SwitchViewByID" CommandArgument="View2"/>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdUpdate" runat="server" Text="Generate Greeting" OnClick="UpdateUI"/>
            </asp:View>
        </asp:MultiView>
    </div>
    <asp:Panel ID="pnlCard" Width="350px" Height="500px" HorizontalAlign="Center" Style="position:absolute;top:10px;left:300px" runat="server">
            <asp:Label ID="lblGreeting" runat="server" Text="" Width="300px" Height="150px"></asp:Label>
            <asp:Image ID="imgDefault" runat="server" width="250px" Height="170px"/>
    </asp:Panel>
    </form>
</body>
</html>
