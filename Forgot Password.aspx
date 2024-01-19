<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot Password.aspx.cs" Inherits="MVP_Timesheet.Forgot_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Timesheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="forgot password__container">
            <table>
                <tr>
                    <td>
                        <%--                        <div class="login__field">
                            <i class="login__icon fas fa-lock"></i>
                            <input type="text" class="new__password" placeholder="Password" required="true">
                        </div>
                        <%--Login field--%>
                        <%--                        <div class="login__field">
                            <i class="login__icon fas fa-lock"></i>
                            <input type="password" class="comfirm__password" placeholder="Password" required="true">
                        </div>--%>
                        <div class="forgot__password">
                            <%--<div class="companylogo">
                                <img src="#" alt="Alternate Text" />
                            </div>--%>
                            <div class="Password__field">
                                <i class="login__icon fas fa-lock"></i>
                                <input type="password" class="login__input" placeholder="New Password" required="true">
                            </div>
                            <%--Login field--%>
                            <div class="login__field">
                                <i class="login__icon fas fa-lock"></i>
                                <input type="password" class="login__input" placeholder="Comfirm Password" required="true">
                            </div>

                            <%--button--%>
                            <button class="button login__submit">
                                <a href="#" class="button__text" onclick="btn-submit"><span>Submit</span></a>
                                <i class="button__icon fas fa-chevron-right"></i>
                            </button>
                            <%-- Signup --%>
<%--                            <div class="paragraph">
                                <h4 style="line-height: 45px;">Don't have account? Signup <a href="Register."><span>Here</span></a></h4>
                            </div>--%>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
