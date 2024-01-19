<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MVP_Timesheet.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Timesheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="register__container">
            <div class="signup__container">
                <div class="signup__screen">
                    <div class="signup__content">
                        <div class="signup">
                            <%--<div class="companylogo">
                                <img src="#" alt="Alternate Text" />
                            </div>--%>

                            <%--login field--%>
                            <div class="paragraph">
                                <h4 style="line-height: 45px;" >already have account? login <a href="Login.aspx"><span>Here</span></a></h4>
                            </div>
                            <%--User Information Field--%>
                            <div class="signup__field">
<%--                                <i class="signup__icon fas fa-user"></i>--%>
                                <input type="text" class="signup__input" placeholder="firstname" required="true">
                            </div>

                            <div class="signup__field">
<%--                                <i class="signup__icon fas fa-user"></i>--%>
                                <input type="text" class="signup__input" placeholder="last name" required="true">
                            </div>

                            <div class="signup__field">
<%--                                <i class="signupn__icon fas fa-user"></i>--%>
                                <input type="text" class="signup__input" placeholder="email address" required="true">
                            </div>

                            <div class="signup__field">
<%--                                <i class="signupn__icon fas fa-user"></i>--%>
                                <input type="number" class="signup__input" placeholder="phone number" required="true">
                            </div>

                            <%--Password Field--%>
                            <div class="signup__field">
                                <%--<i class="signup__icon fas fa-lock"></i>--%>
                                <input type="password" class="signup__input" placeholder="password" required="true">
                            </div>

                            <div class="signup__field">
<%--                                <i class="signup__icon fas fa-user"></i>--%>
                                <input type="text" class="signup__input" placeholder="confirm password" required="true">
                            </div>

                            <%--Submit Button--%>
                            <button class="button signup__submit">
                                <a href="Login.aspx" class="button__text">Signup</a>
                                <i class="button__icon fas fa-chevron-right"></i>
                            </button>
                            <%--<div class="social-login">
				<h3>log in via</h3>
				<div class="social-icons">
					<a href="#" class="social-login__icon fab fa-instagram"></a>
					<a href="#" class="social-login__icon fab fa-facebook"></a>
					<a href="#" class="social-login__icon fab fa-twitter"></a>
				</div>
			</div>--%>
                        </div>
                        <%--<div class="screen__background">
                            <span class="screen__background__shape screen__background__shape8"></span>
                            <span class="screen__background__shape screen__background__shape7"></span>
                            <span class="screen__background__shape screen__background__shape6"></span>
                            <span class="screen__background__shape screen__background__shape5"></span>
                        </div>--%>
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
