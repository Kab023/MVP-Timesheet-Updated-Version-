<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MVP_Timesheet.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Timesheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="form">
            <div class="form2">
                <div class="myform">
                    <label for="employeeName">Employee Name:</label>
                    <input type="text" id="employeeName" required>

                    <label for="task">Task:</label>
                    <input type="text" id="task" required>

                    <label for="role">Role:</label>
                    <input type="text" id="role" required>

                    <label for="timeSpent">Time Spent (hours):</label>
                    <input type="number" id="timeSpent" required>
                </div>
                <button type="button" onclick="addTimesheetEntry()">Add Entry</button>
            </div>
        </div>
    </form>
    <!-- Chart to display time spent on project development -->
    <div id="chartContainer"></div>

    <script>
        // Sample timesheet data (replace with your backend integration)
        let timesheetData = [
            { employeeName: "John Doe", task: "Task 1", role: "Developer", timeSpent: 8 },
            { employeeName: "Jane Smith", task: "Task 2", role: "Designer", timeSpent: 6 },
            // Add more entries as needed
        ];

        // Function to add timesheet entry and update the chart
        function addTimesheetEntry() {
            const employeeName = document.getElementById("employeeName").value;
            const task = document.getElementById("task").value;
            const role = document.getElementById("role").value;
            const timeSpent = parseFloat(document.getElementById("timeSpent").value);

            if (isNaN(timeSpent) || timeSpent <= 0) {
                alert("Please enter a valid time spent value.");
                return;
            }

            timesheetData.push({ employeeName, task, role, timeSpent });
            updateChart();
        }

        // Function to update the chart with current timesheet data
        function updateChart() {
            const chartContainer = document.getElementById("chartContainer");

            // Clear existing chart
            chartContainer.innerHTML = "";

            // Calculate total time spent for each employee
            const totalTimeByEmployee = {};
            timesheetData.forEach(entry => {
                if (!totalTimeByEmployee[entry.employeeName]) {
                    totalTimeByEmployee[entry.employeeName] = 0;
                }
                totalTimeByEmployee[entry.employeeName] += entry.timeSpent;
            });

            // Create a simple bar chart
            const chartData = Object.entries(totalTimeByEmployee).map(([employee, totalTime]) => ({ label: employee, y: totalTime }));

            const chart = new CanvasJS.Chart("chartContainer", {
                animationEnabled: true,
                title: {
                    text: "Time Spent on Project Development"
                },
                axisY: {
                    title: "Total Time Spent (hours)"
                },
                data: [{
                    type: "column",
                    dataPoints: chartData
                }]
            });

            chart.render();
        }

        // Initial chart rendering
        updateChart();
    </script>
</body>
</html>
