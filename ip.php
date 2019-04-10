<html>
	<head>
		<title>ONGC IP address portal</title>
	</head>
	<body>
	<style>
	.yellow-bg
			{
				background-color: #fecc00;
				border-style: solid;
				border-color: #a5302e;
				border-width: 5px;
				
			}
			.red-bg
			{
				background-color: #a5302e;
			}
	.ongc-logo
			{
				display: block;
				margin-left: auto;
				margin-right: auto;	
				width: 1500px;	
			}
	</style>
	<div class="yellow-bg">
	<img class="ongc-logo" src="final.png">
	<div style="padding-left:8000px">
	</div>
	<div class="red-bg link-txt">
				<p style="color:#a5302e">------------------------------------------</p>
	<form action="systeminfo1.php" method="POST">
		<table cellspacing="15px" border="0px" align="center">
		<tr>
			<td>IP address:</td>
			<td><input type="text" name="ip_addr" id="ip_addr" /></td>
		</tr>
		
		<tr>
			<td><input type="submit" name="submit" value="Submit"/></td>
		</tr>
	</form>
	</body>
</html>