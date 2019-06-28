<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewRegistrations.aspx.cs" Inherits="Proj5_Murillo.ViewRegistrations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="/styles/main.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
              <div id="ssbViews">
            <h2 style="background-color: deepskyblue;">Here are all the Registrants!</h2>
             <table style="width:100%">
                <tr>
                    <td style="padding-bottom: 10px; font-weight: 600">First Name</td>
               
                    <td style="font-weight: 600">Last Name</td> 
               
                    <td style="font-weight: 600">Date</td> 
               
                    <td style="font-weight: 600">Time</td>
                
                    <td style="font-weight: 600">Singles</td> 
               
                    <td style="font-weight: 600" >Doubles</td>
                
                    <td style="font-weight: 600">Character ID</td>
                </tr>

                 <asp:Literal ID="litRegistrants" runat="server"></asp:Literal>

            </table>
                  </div>
      
        </div>
    </form>
</body>
</html>
