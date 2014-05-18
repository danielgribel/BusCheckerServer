<?php
	$line = $_REQUEST["line"];
	header('Content-Type: text/html; charset=UTF-8');
	$con = mysql_connect("localhost", "root", "admin") or die("Sem conexao");
	mysql_select_db("buschecker");
	mysql_set_charset('UTF8', $con);
	$sql = "select idcheckin, line, timestamp, address, direction from checkin where line = '$line' order by timestamp desc";
	$dados = array();
	$rs = mysql_query($sql, $con);
	while($row = mysql_fetch_object($rs)) {
		$dados[] = $row;
	}
	echo json_encode($dados);
?>
