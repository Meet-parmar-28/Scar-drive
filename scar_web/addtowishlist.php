<?php
session_start();

include 'config.php';

// Check if the user is logged in
if (!isset($_SESSION['user_id'])) {
   // Redirect to login page if user is not logged in
   header("Location: login.php");
   exit(); // Make sure to stop the script execution after redirection
}

// Retrieve user_id from session
$user_id = $_SESSION['user_id'];

// Sanitize and retrieve data from the GET parameters
$pid = filter_input(INPUT_GET, 'cid', FILTER_SANITIZE_STRING);
$name = filter_input(INPUT_GET, 'cname', FILTER_SANITIZE_STRING);
$price = filter_input(INPUT_GET, 'cprice', FILTER_SANITIZE_STRING);
$image = filter_input(INPUT_GET, 'cimage', FILTER_SANITIZE_STRING);

// Prepare and execute the SQL query to insert data into the wishlist table
$insert_cart = $conn->prepare("INSERT INTO `wishlist` (user_id, car_id, name, price, image) VALUES (?, ?, ?, ?, ?)");
$insert_cart->bind_param("sssss", $user_id, $pid, $name, $price, $image);
$insert_cart->execute();

if ($insert_cart->affected_rows > 0) {
   $message = 'Wishlist updated successfully!';
} else {
   $message = 'Failed to update wishlist.';
}

// Close the prepared statement
$insert_cart->close();

// Redirect to wishlisted.php with a message
header("Location: wishlisted.php?message=" . urlencode($message));
exit();
?>
