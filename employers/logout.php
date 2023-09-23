<?php
session_start(); 

unset($_SESSION['emplogin']);
session_destroy(); 
header("location:emp-login.php"); 
?>

