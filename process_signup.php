<?php
session_start();

// Get form data
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];

// Simulate storing data in a database (you would use a real database here)
// For this example, we'll just store user info in the session
$_SESSION['user'] = [
    'first_name' => $first_name,
    'last_name' => $last_name,
    'username' => $username,
    'email' => $email
];

// Redirect to the homepage
header("Location: index.html");
exit();
?>
