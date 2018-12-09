<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_apps.aspx.cs" Inherits="playstore.user.user_apps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 16px 32px;
            text-align: left;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
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
<body style="background-image: url(../86.jpg);  background-repeat: no-repeat;   background-size: auto;">
    <form id="form1" runat="server">
                <div style="text-align: center; white-space: normal;float:right;position:absolute;left:12%;top:15%"> 
            <div style=" opacity:0.85; padding: 30px 30px 30px 30px; margin: 50px 250px 50px 250px; border-radius:25px; background-position: center center; color: #000000; font-size: x-large; font-weight: bold; background-color: #f2f2f2; clip: rect(auto, auto, auto, auto); position: static; z-index: auto; display: block; width: 45%; height: 45%;">

        
            Hey,
            <asp:Label ID="Label1" runat="server"></asp:Label> 
                <br />
          <asp:Button class="button button2" ID="Button1" runat="server" Text="       Search " Width="202px" Onclick="Button1_click" style="margin-left: 25px"/>         
                </div></div>
                   <div style="text-align: center; white-space: normal;float:right;position:absolute;left:8.5%;top:40%"> 
            <div style=" opacity:0.85; padding: 30px 30px 30px 30px; margin: 50px 250px 50px 250px; border-radius:25px; background-position: center center; color: #000000; font-size: x-large; font-weight: bold; background-color: #f2f2f2; clip: rect(auto, auto, auto, auto); position: static; z-index: auto; display: block; width: 45%; height: 45%;">
                Your Applications <br />
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
      
                <p>
                    &nbsp;</p>
                <asp:Button ID="Button2" runat="server" Height="73px" Text="Logout" Width="166px" Onclick="Button2_click"/>
      
    </form>
</body>
</html>
