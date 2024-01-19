<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEmployee.aspx.cs" Inherits="MVP_Timesheet.Dashbord" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>view/employee/</title>
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
<%--     <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />--%>
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
                                        <div class="sb-item"><i class="sb-icon fa fa-address-card"></i><a href="FirstTrimester.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;" >First Trimester</a> </div>
                                        <div class="sb-item"><i class="sb-icon fa fa-address-card"></i><a href="SecondTrimester.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;" >Second Trimester</a> </div>
                                        <div class="sb-item"><i class="sb-icon fa fa-address-card"></i><a href="ThirdTrimester.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;" >Third Trimester</a> </div>
                                        <div class="sb-item"><i class="sb-icon fa fa-address-card"></i><a href="ForthTrimester.aspx" class="sb-text" style="text-decoration: none; color: #ffffff;" >Forth Trimester</a> </div>
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
            <div class="container mt-5">
            <h2>Editable Table</h2>

                <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Employee</th>
                        <th>Task</th>
                        <th>Role</th>
                    </tr>
                </thead>
                    <tbody>
                    <asp:Repeater ID="rptData" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("id") %></td>
                                <td>
                                    <span class="view-cell"><%# Eval("Employee") %></span>
                                    <input type="text" class="edit-cell form-control" value='<%# Eval("Task") %>' />
                                    <input type="text" class="edit-cell form-control" value='<%# Eval("Role") %>' />
                                </td>

                                 <td>
                                    <span class="view-cell">
                                        <a href="#" class="btn btn-sm btn-primary edit-btn">Edit</a>
                                        <a href="#" class="btn btn-sm btn-danger delete-btn">Delete</a>
                                    </span>
                                    <span class="edit-cell">
                                        <a href="#" class="btn btn-sm btn-success save-btn">Save</a>
                                        <a href="#" class="btn btn-sm btn-secondary cancel-btn">Cancel</a>
                                    </span>
                                </td>

                                 </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
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
        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
<%--                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>--%>
<%--                        <button type="button" class="btn btn-danger delete-confirm-btn">Delete</button>--%>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                    </div>
                </div>
            </div>
        </div>

<%--            <div id="savePopup" class="popup">
    <h3>Save Confirmation</h3>
    <p>Do you want to save changes?</p>
    <button onclick="confirmSave()">Yes</button>
    <button onclick="closePopup()">No</button>
</div>--%>

<%--            <div id="deletePopup" class="popup">
    <h3>Delete Confirmation</h3>
    <p>Do you want to delete this record?</p>
    <button onclick="confirmDelete()">Yes</button>
    <button onclick="closePopup()">No</button>
</div>--%>

<%--            <div class="overlay" onclick="closePopup()"></div>--%>

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

        /*for dashboard content*/

        $(document).ready(function () {

            // Edit button click event
            $('.edit-btn').click(function () {
                var row = $(this).closest('tr');
                row.find('.view-cell').hide();
                row.find('.edit-cell').show();
                row.find('.edit-btn, .delete-btn').hide();
                row.find('.save-btn, .cancel-btn').show();
            });

            // Cancel button click event
            $('.cancel-btn').click(function () {
                var row = $(this).closest('tr');
                row.find('.view-cell').show();
                row.find('.edit-cell').hide();
                row.find('.edit-btn, .delete-btn').show();
                row.find('.save-btn, .cancel-btn').hide();
            });

            // Delete button click event
            $('.delete-btn').click(function () {
                $('#deleteModal').modal('show');
            });

            // Delete confirmation button click event
            $('.delete-confirm-btn').click(function () {
                // Perform delete logic here (e.g., call a C# method via AJAX)
                // On success, close modal and update UI
                $('#deleteModal').modal('hide');
            });

            // Save button click event (sample)
            $('.save-btn').click(function () {
                // Perform save logic here (e.g., call a C# method via AJAX)
                // On success, close modal and update UI
                $('#saveModal').modal('show');
            });
        });




        //let editedRow;

        //function editRow(button) {
        //    editedRow = button.closest('tr');
        //    editedRow.classList.add('editing');
        //}

        //function deleteRow(button) {
        //    editedRow = button.closest('tr');
        //    document.getElementById('deletePopup').style.display = 'block';
        //    document.querySelector('.overlay').style.display = 'block';
        //}

        //function saveRow(button) {
        //    editedRow = button.closest('tr');
        //    document.getElementById('savePopup').style.display = 'block';
        //    document.querySelector('.overlay').style.display = 'block';
        //}

        //function confirmSave() {
        //    editedRow.classList.remove('editing');
        //    closePopup();
        //}

        //function confirmDelete() {
        //    editedRow.remove();
        //    closePopup();
        //}

        //function cancelEdit(button) {
        //    editedRow.classList.remove('editing');
        //}

        //function closePopup() {
        //    document.getElementById('savePopup').style.display = 'none';
        //    document.getElementById('deletePopup').style.display = 'none';
        //    document.querySelector('.overlay').style.display = 'none';
        //}

    </script>
</body>
</html>
