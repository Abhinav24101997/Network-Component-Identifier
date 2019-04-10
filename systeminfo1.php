<?php
	$ipaddr='';
	if ( ! empty($_POST['ip_addr'])){
    $ipaddr = $_POST['ip_addr'];
	}
	
	$host = gethostname();
	$ip = gethostbyname($host);
	if($ip==$ipaddr){
?>

<html>
<body bgcolor="#ffcc00">

	<table cellspacing="5px" border="2px">
	<b>
	<?php
	$myfile = fopen("pingttl.txt", "r") or die("Unable to open file!");
	while(!feof($myfile)){
		echo fgets($myfile)."<br>";
	}
fclose($myfile);
?>
</b>
	<td><input type="button" value="System Information" onclick="location='examples.txt'"/></td>
	</body>

<html> 
	<?php } else {?>
	<html>
	<body bgcolor="#ffcc00">
	<table cellspacing="15px" border="0px">
	<b>
	<font size="21">
	<?php
	echo "IP does not exist";
	?>
	</font>
	</b>
	</body>
<html> 
	<?php } ?>