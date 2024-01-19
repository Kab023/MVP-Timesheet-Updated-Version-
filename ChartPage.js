document.addEventListener('DOMContentLoaded', function () {
    // Data for the charts (replace this with your data)
    var trimesters = ['Trimester 1', 'Trimester 2', 'Trimester 3'];
    var projectCounts = [10, 15, 8];
    var moneySpent = [50000, 75000, 40000];

    // Bar Chart
    var barCtx = document.getElementById('barChart').getContext('2d');
    var barChart = new Chart(barCtx, {
        type: 'bar',
        data: {
            labels: trimesters,
            datasets: [{
                label: 'Number of Projects',
                data: projectCounts,
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Pie Chart
    var pieCtx = document.getElementById('pieChart').getContext('2d');
    var pieChart = new Chart(pieCtx, {
        type: 'pie',
        data: {
            labels: trimesters,
            datasets: [{
                data: moneySpent,
                backgroundColor: ['red', 'green', 'blue']
            }]
        }
    });
});

// Function to show sign-out confirmation dialog
function confirmSignOut() {
    var isConfirmed = window.confirm("Are you sure you want to sign out?");

    if (isConfirmed) {
        // Perform sign-out action here
        alert("You are signed out!");
    } else {
        // User chose not to sign out
        alert("Sign-out canceled!");
    }
}
