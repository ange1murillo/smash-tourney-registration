<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Proj5_Murillo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="/styles/main.css"/>
    <style>

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel runat="server" ID="pnlForm" Visible="true">
            
            <div id="ssbRegForm">

            <h2 id="mainHeader">Super Smash Bros. Tournament Registration</h2>
            <table style="width:100%; height:100%; margin: 0 auto; ">
                <tr>
                    <td style="">
                <table class="ssbReg" style=" border-spacing: 0;">
                    <tr>
                        <td>First Name:</td>
                        <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td>             
                            <asp:RequiredFieldValidator ID="valFirstName" runat="server" ControlToValidate="txtFirstName" EnableClientScrip="true" ErrorMessage="First Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td>Last Name:</td>
                        <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td>             
                            <asp:RequiredFieldValidator ID="valLastName" runat="server" ControlToValidate="txtLastName" EnableClientScrip="true" ErrorMessage="Last Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                       <td>Date:</td>
                        <td><asp:DropDownList ID="drpDate" runat="server">

                                <asp:ListItem Text="June-8-2019" Value="6/8/2019" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="July-13-2019" Value="7/13/2019"></asp:ListItem>
                                <asp:ListItem Text="August-10-2019" Value="8/10/2019"></asp:ListItem> 

                            </asp:DropDownList>

                        </td>
                   </tr>

                    <tr>
                        <td>&nbsp</td>
                        <td>&nbsp</td>
                    </tr>

                    <tr>
                       <td>Time:</td>
                        <td><asp:DropDownList ID="drpTime" runat="server">

                                <asp:ListItem Text="11:00 AM" Value="11:00AM" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="3:00 PM" Value="3:00PM"></asp:ListItem>
                                <asp:ListItem Text="6:00 PM" Value="6:00PM"></asp:ListItem> 

                            </asp:DropDownList>

                        </td>
                   </tr>

                    <tr>
                        <td>&nbsp</td>
                        <td>&nbsp</td>
                    </tr>


                    <tr>
                        <td>Email:</td>
                        <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                    
                    </tr>

                     <tr>
                        <td></td>
                        <td><asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" EnableClientScript="true" ErrorMessage="Email Is Required" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator></td>     
                      </tr>

                    
                     <tr>
                        <td></td>
                        <td><asp:RegularExpressionValidator ID="regexEmail" ControlToValidate="txtEmail" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" EnableClientScript="true" ErrorMessage="Enter a Valid Email" runat="server" ForeColor="Red" SetFocusOnError="true"></asp:RegularExpressionValidator></td>
                      </tr>

                    <tr>
                        <td>Confirm Email:</td>
                        <td><asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox>
                        </td>
                    
                    </tr>

                    <tr>
                        <td></td>
                        <td><asp:RequiredFieldValidator runat="server" ControlToValidate="txtConfirmEmail" EnableClientScript="true" ErrorMessage="Confirmed Email is Required" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator></td>     
                      </tr>

                     <tr>
                        <td></td>
                        <td><asp:CompareValidator ID="compEmail" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" EnableClientScript="true" ErrorMessage="Email is not a Match" runat="server" ForeColor="Red"></asp:CompareValidator></td>     
                      </tr>

                    <tr>
                        <td>Game Type:</td>
                        <td><span>Singles</span> 
                        <span><asp:Checkbox ID="chkSingles" runat="server"></asp:Checkbox></span>
                        <span>Doubles</span>
                        <span><asp:Checkbox ID="chkDoubles" runat="server"></asp:Checkbox></span></td>
                    </tr>

                     <tr>
                        <td>&nbsp</td>
                        <td>&nbsp</td>
                    </tr>

                    <tr>
                        <td>Character:</td>
                        <td>
                            <asp:DropDownList ID="drpCharacter" runat="server" OnSelectedIndexChanged="drpCharacter_SelectedIndexChanged" AutoPostBack="True">

                                <asp:ListItem Text="Random" Value="0" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Mario" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Pikachu" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Sonic" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Link" Value="4"></asp:ListItem> 
                                <asp:ListItem Text="Bowser" Value="5"></asp:ListItem>
                                <asp:ListItem Text="Cloud" Value="6"></asp:ListItem>
                                <asp:ListItem Text="Donkey Kong" Value="7"></asp:ListItem>
                                <asp:ListItem Text="Fox" Value="8"></asp:ListItem> 
                                <asp:ListItem Text="Kirby" Value="9"></asp:ListItem>
                                <asp:ListItem Text="Luigi" Value="10"></asp:ListItem>
                                <asp:ListItem Text="Mewtwo" Value="11"></asp:ListItem>
                                <asp:ListItem Text="Peach" Value="12"></asp:ListItem> 
                                <asp:ListItem Text="Samus" Value="13"></asp:ListItem>
                                <asp:ListItem Text="Wolf" Value="14"></asp:ListItem>
                                <asp:ListItem Text="Yoshi" Value="15"></asp:ListItem> 
                                
                            </asp:DropDownList>
                        </td>

                    </tr>

                     <tr>
                        <td>&nbsp</td>
                        <td>&nbsp</td>
                    </tr>

                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>  
                        </td>
                    </tr>

            </table>
                </td>
                    <td id="tdSmashImage" style="width:50%;">
                        <asp:Image ID="imgCharacter" runat="server" ImageUrl ="~/Images/smashball.png" Height="360px" CssClass="auto-style1" />

                    </td>

                    </tr>
                </table>
                
            </div>
         </asp:Panel>

            <asp:Panel ID="pnlConfirm" runat="server" Visible="false">
              <div id="ssbConfirmation">
            <h2 style="background-color: deepskyblue;">Thank you for Registering!</h2>
             <table class="ssbConfirm" style="width:100%; margin-bottom: 20px">
                <tr>
                    <td>First Name:</td> <td><asp:Label ID="lblFirstName" runat="server"></asp:Label></td>
                </tr>
                  <tr>
                    <td>Last Name:</td> <td><asp:Label ID="lblLastName" runat="server"></asp:Label></td>
                </tr>
                 <tr>
                    <td>Date:</td> <td><asp:Label ID="lblDate" runat="server"></asp:Label></td>
                </tr>

                <tr>
                    <td>Time:</td> <td><asp:Label ID="lblTime" runat="server"></asp:Label></td>
                </tr>

                 <tr>
                    <td>Email:</td> <td><asp:Label ID="lblEmail" runat="server"></asp:Label></td>
                </tr>

                <tr>
                    <td>Email Confirmation:</td> <td><asp:Label ID="lblEmailConfirm" runat="server"></asp:Label></td>
                </tr>

                <tr>
                    <td>Singles:</td> <td><asp:Label ID="lblSingles" runat="server"></asp:Label></td>
                </tr>

                 <tr>
                    <td>Doubles:</td> <td><asp:Label ID="lblDoubles" runat="server"></asp:Label></td>
                </tr>

                 <tr>
                    <td>Character:</td> <td><asp:Label ID="lblCharacter" runat="server"></asp:Label></td>
                </tr>

            </table>
                  <span id="viewsLinkto"><a style="text-decoration:none;" href="ViewRegistrations.aspx">View Registrants</a></span>
                  </div>

                
        </asp:Panel>
        </div>
    </form>
</body>
</html>
