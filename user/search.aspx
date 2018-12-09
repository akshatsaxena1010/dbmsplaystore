<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="playstore.user_login.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            margin-left: 0px;
        }
          .button {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50; /* Green */
            color: white;
            padding: 16px 32px;
            text-align: left;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 9px 2px 4px 2px;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
            cursor: pointer;
        }
        .button2 {
            background-color: white; 
            
            color: black; 
            border: 2px solid #008CBA;
        }

        .button2:hover {
            background-color: #008CBA;
            
            color: white;
        }
    </style>
</head>
<body style="background-image: url(../85.jpg);  background-repeat: no-repeat;   background-size: auto;">
    <form id="form1" runat="server">
         <div style="text-align: center; white-space: normal;float:right;position:absolute; right:55%; top:20%"> 
            <div style=" opacity:0.75; padding: 30px 30px 30px 30px; margin: 50px 250px 50px 250px; border-radius:25px; background-position: center center; color: #000000; font-size: x-large; font-weight: bold; background-color: #f2f2f2; clip: rect(auto, auto, auto, auto); position: static; z-index: auto; display: block; width: 45%; height: 45%;">

        <br />
  Welcome, <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
        <br />
 Enter the Application to be searched<br />
                <br />

        <asp:TextBox ID="TextBox1" runat="server" Height="43px" Width="259px" placeholder="  App Name" BackColor="#BFBEC2"></asp:TextBox>
        <br />
        <br />

        <asp:Button class="button button2" ID="Button1" runat="server" Height="49px" OnClick="Button1_Click1" Text="    Search" Width="150px" />
                &nbsp;&nbsp;
                <asp:Button class="button button2" ID="Button2" runat="server" OnClick="Button2_Click" Text="      Back" Height="49px" Width="150px" />
        </div></div>
         <div style="text-align: center; white-space: normal;float:right;position:absolute;left:35%;top:10%"> 
            <div style=" opacity:0.75; padding: 30px 30px 30px 30px; margin: 50px 250px 50px 250px; border-radius:25px; background-position: center center; color: #000000; font-size: x-large; font-weight: bold; background-color: #f2f2f2; clip: rect(auto, auto, auto, auto); position: static; z-index: auto; display: block; width: 45%; height: 45%;">
                Available Applications <br />
                <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="450px" AutoGenerateColumns="false" Font-Size="Large">
                        <Columns>
                            <asp:BoundField DataField="App_Name" HeaderText="Name"/>
                            <asp:BoundField DataField="Price" HeaderText="Price"/>
                            <asp:BoundField DataField="Size" HeaderText="Size"/>
                            <asp:BoundField DataField="Genre" HeaderText="Genre"/>
                        </Columns>
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
  </div></div>  
</form>
</body>
</html>
