<?php
 // config file used to connect to data base.
 // connection to database.
 $con = mysql_connect("localhost:3306","root","booklovers");
 // if database is not found.
 $query=mysql_query("SET CHARACTER SET utf8") or die('Cannot select CHARACTER SET utf8: ' . mysql_error());
 // selection of database.
 mysql_select_db("eshop",$con);
?>

