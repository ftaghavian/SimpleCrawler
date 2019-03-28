<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="WebApplication1.Demo" %>
<%@ Register Src="~/MyWebUserControl1.ascx" TagName="WebControl" TagPrefix="TWebControl"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .myButton {
	        -moz-box-shadow: 6px 7px 14px -6px #3e7327;
	        -webkit-box-shadow: 6px 7px 14px -6px #3e7327;
	        box-shadow: 6px 7px 14px -6px #3e7327;
	        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #77b55a), color-stop(1, #72b352));
	        background:-moz-linear-gradient(top, #77b55a 5%, #72b352 100%);
	        background:-webkit-linear-gradient(top, #77b55a 5%, #72b352 100%);
	        background:-o-linear-gradient(top, #77b55a 5%, #72b352 100%);
	        background:linear-gradient(to bottom, #77b55a 5%, #72b352 100%);
	        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#77b55a', endColorstr='#72b352',GradientType=0);
	        background-color:#77b55a;
	        color:#ffffff;
	        font-family:Arial;
	        font-size:13px;
	        font-weight:bold;
	        padding:14px 33px;
	        text-decoration:none;
	        text-shadow:0px -1px 0px #5b8a3c;
            
        }
        .myButton:hover {
	        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #72b352), color-stop(1, #77b55a));
	        background:-moz-linear-gradient(top, #72b352 5%, #77b55a 100%);
	        background:-webkit-linear-gradient(top, #72b352 5%, #77b55a 100%);
	        background:-o-linear-gradient(top, #72b352 5%, #77b55a 100%);
	        background:linear-gradient(to bottom, #72b352 5%, #77b55a 100%);
	        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#72b352', endColorstr='#77b55a',GradientType=0);
	        background-color:#72b352;
        }
        
        .tableCell {
            display:inline-block;
            overflow-wrap:break-word;
            table-layout:fixed;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <asp:Button ID="ShowTweetsbtn" CssClass="myButton" runat="server" OnClick="Button1_Click" Text="Trump's Latest Tweets" Font-Bold="True" Font-Size="12pt" Width="300px" />
            <asp:Button ID="ShowArticlesbtn" runat="server" CssClass="myButton" Font-Bold="True" Font-Size="12pt" OnClick="Button2_Click" Text="Latest News About Him" Width="300px" />
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
         <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center">
             <asp:Table CssClass="tableCell" ID="Tweetstbl" runat="server" BackColor="#B7F0EB" BorderColor="#CCCCCC" ForeColor="#3333FF" GridLines="Horizontal" HorizontalAlign="Left" BorderStyle="Solid" Width="500px">
                 <asp:TableRow CssClass="tableCell" HorizontalAlign="Center" TableSection="TableHeader" BackColor="White" Font-Bold="True" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px" HorizontalAlign="Left">Tweets</asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" Width="300px"   runat="server">
                     <asp:TableCell CssClass="tableCell" Width="300px" HorizontalAlign="Left" > 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
             </asp:Table>
             <asp:Table CssClass="tableCell" ID="Articlestbl" runat="server" BackColor="#B7F0EB" BorderColor="#CCCCCC" ForeColor="#3333FF" GridLines="Horizontal" HorizontalAlign="Left" BorderStyle="Solid" EnableTheming="True" Width="500px">
                 <asp:TableRow CssClass="tableCell" HorizontalAlign="Center" TableSection="TableHeader" BackColor="White" Font-Bold="True" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px" HorizontalAlign="Left"> CNN Latest News</asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" Width="300px"   runat="server">
                     <asp:TableCell CssClass="tableCell" Width="300px" HorizontalAlign="Left" > 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="tableCell" runat="server" Width="300px">
                     <asp:TableCell CssClass="tableCell" Width="300px"   HorizontalAlign="Left"> 
                </asp:TableCell>
                 </asp:TableRow>
             </asp:Table>            
        </asp:Panel>
         <br />
        <br />
    </form>
</body>
</html>
