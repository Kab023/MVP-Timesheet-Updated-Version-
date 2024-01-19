<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MVP_Timesheet.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Timesheet/Login</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="Timesheet.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="form">
            <div class="container">
                <div class="screen">
                    <div class="screen__content">
                        <div class="login">
                            <%--<div class="companylogo">
                                <img src="#" alt="Alternate Text" />
                            </div>--%>
                            <div class="login__field">
                                <i class="login__icon fas fa-user"></i>
                                <input type="text" class="login__input" placeholder="User name" required="true">
                            </div>
                            <%--Login field--%>
                            <div class="login__field">
                                <i class="login__icon fas fa-lock"></i>
                                <input type="password" class="login__input" placeholder="Password" required="true">
                            </div>
                            <%--Forgot Password--%>
                            <div class="forgot password__field">
                                <span><a href="Forgot Password.aspx">forgot password</a></span>
                            </div>
                            <!-- Recaptcha Section -->
                            <div class="form-group">
                                <div class="g-recaptcha" data-sitekey="6LeyxxopAAAAAAJfhC6giJ3WRr5VV1n9zCrSpkyl"></div>
                            </div>
                            <%--button--%>
                            <button class="button login__submit">
                                <a href="Dashbord.aspx" class="button__text">Login</a>
                                <i class="button__icon fas fa-chevron-right"></i>
                            </button>
                            <%-- Signup --%>
                            <div class="paragraph">
                                <h4 style="line-height: 45px;">Don't have account? Signup <a href="Register."><span>Here</span></a></h4>
                            </div>
                        </div>
                        <%--<div class="social-login">
				<h3>log in via</h3>
				<div class="social-icons">
					<a href="#" class="social-login__icon fab fa-instagram"></a>
					<a href="#" class="social-login__icon fab fa-facebook"></a>
					<a href="#" class="social-login__icon fab fa-twitter"></a>
				</div>
			</div>--%>
                    </div>
                    <div class="screen__background">
                        <span class="screen__background__shape screen__background__shape4"></span>
                        <%--<span class="screen__background__shape screen__background__shape3"></sp--%>an>
                        <span class="screen__background__shape screen__background__shape2"></span>
                        <span class="screen__background__shape screen__background__shape1"></span>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <%--External Links--%>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <script src="assets/js/Login.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/umd/popper.min.js"></script>
    <script src="Scripts/jquery-3.7.1.slim.min.js"></script>

    <script>

</script>
</body>
</html>
