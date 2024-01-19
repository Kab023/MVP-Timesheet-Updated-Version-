<%@ Page Language="C#" AutoEventWireup="true" ErrorPage="~/DefaultErrorHandling.aspx" CodeBehind="DefaultErrorHandling.aspx.cs" Inherits="MVP_Timesheet.DefaultErrorHandling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Timesheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <%--<center>--%>
    <table style="border: none">
        <tr style="">
            <td style="color: red; text-align: center">
                <h2 style="font-size: 60px; font-family:'Times New Roman', Times, serif;" >Server Error</h2>
                <center>
                <img src="images/alert.png" alt="Alert"  style="height: 150px; width: 150px;" />
                </center>
                <h3 style="text-align:center;  color:black; line-height:30px; font-family:'Times New Roman', Times, serif;  ">
                    We are aware of the error occured and our IT team is currently working on it.
                    <br/>
                    Sorry for the inconvinience caused, kindly visit our site again after few minutes.                
                </h3>
            </td>
        </tr>
        
        <tr>
            <td>
                <h4 style="text-align:center; line-height: 50px; font-family:'Times New Roman', Times, serif;  ">
                    If you need further assistance, please contact our helpdesk at automation.helpdesk@lubanzi.tech
                </h4>
            </td>
            <%--<td>
                <h4 id="mymodal" onclick="mymodal_Click">Leave your feedback here</h4>
            </td>--%>
        </tr>
    </table>
<%--</center>--%>
    </form>
</body>
</html>
