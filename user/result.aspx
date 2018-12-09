<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="playstore.user_login.result" %>

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
<body style="background-image: url(../95.jpg);  background-repeat: no-repeat;   background-size: auto;">
    <form id="form1" runat="server">
         <div style="text-align: center; white-space: normal;float:right;position:absolute;left:6.5%;top:15%"> 
            <div style=" opacity:0.85; padding: 30px 30px 30px 30px; margin: 50px 250px 50px 250px; border-radius:25px; background-position: center center; color: #000000; font-size: x-large; font-weight: bold; background-color: #f2f2f2; clip: rect(auto, auto, auto, auto); position: static; z-index: auto; display: block; width: 45%; height: 45%;">

            Hey,
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </div>
             </div>
        <div style="text-align: center; white-space: normal;float:right;position:absolute;left:5%;top:40%"> 
            <div style=" opacity:0.85; padding: 30px 30px 30px 30px; margin: 50px 250px 50px 250px; border-radius:25px; background-position: center center; color: #000000; font-size: x-large; font-weight: bold; background-color: #f2f2f2; clip: rect(auto, auto, auto, auto); position: static; z-index: auto; display: block; width: 45%; height: 45%;">

                Application Information<br />
                <br />

                <div style="text-align:center;"margin-left:-1%;">Name: <asp:Label ID="Label1" runat="server"></asp:Label> </div>       
                <br />
                <div style="text-align:center;margin-left:-31%;">Price:  <asp:Label ID="Label6" runat="server"></asp:Label> </div>              
                <br />
                <div style="text-align:center;margin-left:-33%;">Size: <asp:Label ID="Label3" runat="server"></asp:Label> </div>           
                <br />
                <div style="text-align:center;margin-left:-14%;">Dev : <asp:Label ID="Label4" runat="server"></asp:Label>     </div>     
                <br />
                <br />
                <asp:Button class="button button2" ID="Button1" runat="server" OnClick="Button1_Click" Text="Buy" Width="93px" /> 
                 
                <asp:Button class="button button2" ID="Button2" runat="server"  Text="Back" OnClick="Button2_Click"/>
            </div>
        </div>
    </form>
</body>
</html>
