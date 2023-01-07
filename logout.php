<?php
session_start();
include("includes/config.php");

$_SESSION['login'] == "";
date_default_timezone_set('Asia/Kolkata');
session_unset();
echo "<script>alert('You have successfully logout')</script>"
?>

<script language="javascript">
    document.location = "index.php";
</script>