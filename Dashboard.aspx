<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="MVP_Timesheet.Dashbord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--External CSS link--%>
    <link href="Timesheet.css" rel="stylesheet" />
    <%--External JS link--%>
    <script src="ChartPage.js"></script>
    <%-- Adding External Links --%>
    <link href="Timesheet.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    <%--chatgp link--%>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <%--Adding Bootstrap for icons--%>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />

</head>

<body>
    <%-- Adding Canvas for Graphs --%>
    <canvas id="myChart" style="width: 100%; max-width: 600px"></canvas>

    <form id="form1" runat="server">
        <div class="dashboard__container">
            <div class="wrapper">
                <div class="sidebar">
                    <div class="sb-item-list">
                        <div class="sb-item"><i class="sb-icon fa fa-address-card"></i><a href="Dashboard.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;">Home</a></div>
                        <div class="sb-item"><i class="sb-icon fa fa-address-card"></i><a href="ViewProject.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;">Project</a></div>
                        <div class="sb-item"><i class="sb-icon fa fa-address-card"></i><a href="ViewEmployee.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;">Employee</a></div>
                        <div class="sb-item sb-menu">
                            <i class="sb-icon fa fa-address-card"></i><a href="#" class="sb-text" style="text-decoration: none; color: #ffffff;">Timesheet</a>
                            <div class="sb-submenu">
                                <div class="sb-item"><i class="sb-icon fa fa-address-card"></i><a href="CaptureTimesheet.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;">Create</a></div>
                                <div class="sb-item sb-menu">
                                    <i class="sb-icon fa fa-address-card"></i><a href="ViewTimesheet.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;">View</a>
                                    <div class="sb-submenu">
                                        <div class="sb-item"><i class="sb-icon fa fa-address-card"></i><a href="FirstTrimester.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;">First Trimester</a> </div>
                                        <div class="sb-item"><i class="sb-icon fa fa-address-card"></i><a href="SecondTrimester.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;">Second Trimester</a> </div>
                                        <div class="sb-item"><i class="sb-icon fa fa-address-card"></i><a href="ThirdTrimester.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;">Third Trimester</a> </div>
                                        <div class="sb-item"><i class="sb-icon fa fa-address-card"></i><a href="ForthTrimester.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;">Forth Trimester</a> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sb-item">
                            <i class="sb-icon fa fa-address-card"></i>
                            <%--<a href="Login.aspx">--%>
                            <%--                                <asp:Button ID="btnSignOut" runat="server" Text="Sign Out" CssClass="btn btn-danger" OnClientClick="showLogoutModal(); return false;" />--%>
                            <button id="signOutBtn" <%--onclick="ConfirmSignOut()"--%> onclick="showLogoutModal(); return false;">Sign Out</button>
                            <%--<span class="sb-text">Sign Out</span>--%>

                            <%--</a>--%>
                        </div>

                        <div class="btn-toggle-sidebar sb-item">
                            <i class="sb-icon fa fa-angle-double-left"></i><span class="sb-text">Collapse Sidebar</span><i class="sb-icon fa fa-angle-double-right"></i>
                        </div>
                    </div>
                </div>
                <div class="main"></div>
            </div>
            <%--Adding Dashboard Content--%>
            <div class="dashboard__content">
                <div class="graph__content">
                    <div class="heading">
                        <h2>project summary per trimester</h2>
                    </div>
                    <div>
                        <h2>project bar chart</h2>
                        <canvas id="barChart" width="400" height="200"></canvas>

                        <h2>project pie chart</h2>
                        <canvas id="pieChart" width="400" height="200"></canvas>
                    </div>
                </div>

            </div>

            <!-- Logout Pop-up Modal -->
            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Confirm Sign Out</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            Are you sure you want to sign out?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <%--                            <asp:Button ID="btnConfirmLogOut" runat="server" Text="Sign Out" CssClass="btn btn-danger" OnClick="btnConfirmLogOut_Click" />--%>
                            <%--                            <asp:Button ID="btnConfirmSignOut" Text="SignOut" OnClick="btnCOnfirmSignOut_Click" runat="server"  />--%>
                            <a href="Login.aspx">Yes</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <%--Adding JQuery and Bootstrap links--%>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
    <!-- Include Bootstrap JS for Sign Out popup -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script type="text/javascript">
        function showLogoutModal() {
            $('#logoutModal').modal('show');
        }
    </script>



    <%--Sign Out Pop-up--%>
    <%--        <script type="text/javascript">
            function confirmSignOut() {
                var confirmSignOut = confirm("Are you sure you want to sign out?");
                if (confirmSignOut) {
                    // Redirect to the sign-out page or perform the sign-out logic
                    window.location.href = "Login.aspx";
                }
            }
        </script>--%>
</body>
</html>
