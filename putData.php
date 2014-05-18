<?php
	$line = $_REQUEST["line"];
	$timestamp = $_REQUEST["timestamp"];
	$address = $_REQUEST["address"];
	$direction = $_REQUEST["direction"];
	$con = mysql_connect("localhost", "root", "admin") or die("Sin conexion");
	mysql_select_db("buschecker");
	echo $sql = "insert into checkin(line, timestamp, address, direction) values('$line', '$timestamp', '$address', '$direction')";
	$result = mysql_query($sql, $con);
	echo $result;
?>
