<HTML>
<HEAD>
<META http-equiv="content-type" content="text/html; charset=utf-8">
</HEAD>
<body>
	<?php
		$con=mysqli_connect("localhost", "wngh9512", "pjh6208!", "wngh9512") or die("MySQL 접속 실패!!");

		$userID = $_POST['userID'];
		$name = $_POST['name'];
		$birthYear = $_POST['birthYear'];
		$addr = $_POST['addr'];
		$mobile1 = $_POST['mobile1'];
		$mobile2 = $_POST['mobile2'];
		$height = $_POST['height'];
		$mDate = $_POST['mDate'];
		$sql = "SELECT * FROM usertbl WHERE userID = '".$userID."' && password = '".$password."'";
		$result = mysqli_query($con,$sql);
		$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
		$count = mysqli_num_rows($result);
		
		print_r($uesrID);
?>
</body>
</html>