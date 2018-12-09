<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="playstore.Welcome.welcome" %>

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
<body style="background-image: url(../60.jpg);  background-repeat: no-repeat;   background-size: auto;">
      
   <h1 style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; text-align: left; font-style: normal;margin-left:25%;font-size: 40px; font-weight: bolder; ">Welcome to the App Store</h1>
    <h5 style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; text-align: left; font-style: normal;margin-left:28%;margin-top:5%;font-size: 30px;">User</h5>
    <form id="form1" runat="server" >
        <div style="text-align: center; white-space: normal;float:right;position:absolute;left:10%;top:20%"> 
            <div style=" opacity:0.85; padding: 30px 30px 30px 30px; margin: 50px 250px 50px 250px; border-radius:25px; background-position: center center; color: #000000; font-size: x-large; font-weight: bold; background-color: #f2f2f2; clip: rect(auto, auto, auto, auto); position: static; z-index: auto; display: block; width: 45%; height: 45%;">

                <asp:Button class="button button2" ID="Button1" runat="server" Text="Login" Onclick="Button1_Click"/>
                <asp:Button class="button button2" ID="Button5" runat="server" Text="Register" Onclick="Button2_Click"/>
            </div> 
        </div>

        <h5 style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; text-align: left; font-style: normal;margin-left:28%;margin-top:13%;font-size: 30px;">Developer</h5>
         <div style="text-align: center; white-space: normal;float:right;position:absolute;left:10%;top:50%"> 
            <div style=" opacity:0.85; padding: 30px 30px 30px 30px; margin: 50px 250px 50px 250px; border-radius:25px; background-position: center center; color: #000000; font-size: x-large; font-weight: bold; background-color: #f2f2f2; clip: rect(auto, auto, auto, auto); position: static; z-index: auto; display: block; width: 45%; height: 45%;">

                   <asp:Button class="button button2" ID="Button3" runat="server" Text="Login" Onclick="Button3_Click" />
                    <asp:Button class="button button2" ID="Button4" runat="server" Text="Register" Onclick="Button4_Click"/>
            </div>    
        </div>
    </form>
</body>
</html>
