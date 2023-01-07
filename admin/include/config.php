<?php
define('DB_SERVER','db-mysql-ams3-78624-do-user-12875970-0.b.db.ondigitalocean.com');
define('DB_USER','doadmin');
define('DB_PASS' ,'AVNS_dQL2pOUYKYwlG8oiPZH');
define('DB_NAME', 'shopping');
define('PORT', '25060');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME,PORT);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>