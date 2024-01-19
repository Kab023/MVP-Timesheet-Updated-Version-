<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateEmployee.aspx.cs" Inherits="MVP_Timesheet.Dashbord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--External CSS link--%>
    <link href="Timesheet.css" rel="stylesheet" />
    <%--External JS link--%>
    <script src="ChartPage.js"></script>
    <%-- Adding External Links --%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    <%--chatgp link--%>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <%--Adding Bootstrap for icons--%>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <%--Links from Employee table--%>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <%--link for Employee Form--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <%--Adding Data to Server with HTML btn--%>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>

</head>
<body>
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
                            <%--<asp:Button ID="btnSignOut" runat="server" Text="Sign Out" CssClass="btn btn-danger" OnClientClick="showLogoutModal(); return false;" />--%>
                            <button id="signOutBtn" onclick="showLogoutModal(); return false;">Sign Out</button>
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
                <h2>Create Employee Form</h2>
                <div class="container mt-5">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label for="EmployeeName">Employee Name:</label>
                            <input type="text" id="txtEmployeeName" class="form-control" />
                        </div>
                        <%--<div class="form-group">
                            <label for="task">Task:</label>
                            <input type="text" id="task" class="form-control" />
                        </div>--%>
                        <div class="form-group">
                            <label for="Role">Role:</label>
                            <select id="ddlRole" class="form-control">
                                <option value="Developer">Automation Testing</option>
                                <option value="Developer">Business Analysist</option>
                                <option value="Developer">Software Developer</option>
                                <option value="Developer">Developer</option>
                                <option value="Developer">Manager</option>
                                <option value="Manager">Quality Engineering</option>
                                <option value="Designer">UI/UX</option>
                            </select>
                        </div>

                    </div>
                </div>
                <div class="form-actions">
                    <%--<button type="button" class="btn btn-primary" onclick="addEmployee()">Add</button>--%>
                    <%--<button type="button" class="btn btn-success" onclick="editEmployee()">Edit</button>--%>
                    <%--<button type="button" class="btn btn-danger" onclick="deleteEmployee()">Delete</button>--%>
                    <button type="button" class="btn btn-warning" onclick="SaveEmployee()">Save</button>
                    <button type="button" class="btn btn-secondary" onclick="cancelAction()">Cancel</button>
                </div>

                <!-- Save Modal -->
                <div class="modal fade" id="saveModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Save Confirmation</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                Record saved successfully!
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Delete Modal -->
                <%--<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Delete Confirmation</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                Are you sure you want to delete this record?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-danger" onclick="confirmDelete()">Delete</button>
                            </div>
                        </div>
                    </div>
                </div>--%>
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
                            <a href="Login.aspx" style="border: 25px solid grey; box-sizing: border-box; background-color: #e6e0e0; text-decoration: none;">Yes</a>
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
    <script>
        /*script for Employee Form*/

        function addEmployee() {
            // Implement logic for adding employee
            $('#saveModal').modal('show');
        }

        function editEmployee() {
            // Implement logic for editing employee
            $('#saveModal').modal('show');
        }

        function deleteEmployee() {
            $('#deleteModal').modal('show');
        }

        function confirmDelete() {
            // Implement logic for deleting employee
            $('#deleteModal').modal('hide');
        }

        function saveEmployee() {
            // Implement logic for saving employee
            $('#saveModal').modal('show');
        }

        function cancelAction() {
            // Implement logic for canceling action
            $('#saveModal').modal('hide');
            $('#deleteModal').modal('hide');
        }

        /*Adding Data from HTML btn*/
        function addData() {
            var data = {
                // Gather data from input fields or other sources
                employeename: $('#txtemployeeName').val(),
                role: $('#ddlRole').val()
            };

            $.ajax({
                type: 'POST',
                url: 'AddDataPage.aspx/AddData', // The URL to your server-side method
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ data: data }),
                dataType: 'json',
                success: function (response) {
                    // Handle success
                    alert('Data added successfully!');
                },

                error: function (error) {
                    // Handle error
                    alert('Error adding data: ' + error.responseText);
                }
            });
        }
    </script>
</body>
</html>
