<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="devadd.aspx.cs" Inherits="playstore.developer.devadd" %>

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
<body style="background-image: url(../23.jpg);  background-repeat: no-repeat;   background-size: auto;">
      <h5 style="font-family: 'Times New Roman', Times, serif; text-align: left; font-style: normal;margin-left:28%;margin-top:5%;font-size: 30px;">Enter Application Details</h5>
   
    <form id="form1" runat="server">
        <div style="text-align: center; white-space: normal;float:right;position:absolute;left:10%;top:10%"> 
            <div style=" opacity:0.85; padding: 30px 30px 30px 30px; margin: 50px 250px 50px 250px; border-radius:25px; background-position: center center; color: #000000; font-size: x-large; font-weight: bold; background-color: #f2f2f2; clip: rect(auto, auto, auto, auto); position: static; z-index: auto; display: block; width: 45%; height: 45%;">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Name" BackColor="#BFBEC2"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Size" BackColor="#BFBEC2"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Price" BackColor="#BFBEC2"></asp:TextBox>        
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="16px" placeholder="Genre" BackColor="#BFBEC2"></asp:TextBox>   
                <br />
            </div>
        </div>

         <div style="text-align: center; white-space: normal;float:right;position:absolute;left:9%;top:55%"> 
            <div style=" opacity:0.85; padding: 30px 30px 30px 30px; margin: 50px 250px 50px 250px; border-radius:25px; background-position: center center; color: #000000; font-size: x-large; font-weight: bold; background-color: #f2f2f2; clip: rect(auto, auto, auto, auto); position: static; z-index: auto; display: block; width: 45%; height: 45%;">
                <asp:Button class="button button2" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />        
                        
                <asp:Button class="button button2" ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />                           
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </div>
        
    </form>
</body>
</html>
