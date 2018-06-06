<HTML>
<HEAD>
<META http-equiv="content-type" content="text/html; charset=utf-8">
</HEAD>
<body>
<?php			
	session_start();
	$con = mysqli_connect("localhost", "wngh9512", "pjh6208!", "wngh9512") or die("MySQL 접속 실패!!");
	if($_SERVER["REQUEST_METHOD"] == "POST")
	{
		$userID = mysqli_real_escape_string($con,$_POST['userID']);
		$password = mysqli_real_escape_string($con,$_POST['password']);
		$name= mysqli_real_escape_string($con,$_POST['name']);	
		
		$sql = "SELECT * FROM usertbl WHERE userID = '".$userID."' && password = '".$password."'";
		$result = mysqli_query($con,$sql);
		$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
		$count = mysqli_num_rows($result);
		
		if($count == 1)
		{ 
			$_SESSION['userID'] = $userID;
			$_SESSION['name'] = $name;
			echo "<script>window.alert('로그인 성공');</script>";
			echo("<script>location.href='main.html';</script>");
		}
		else 
		{
			echo "<script>window.alert('로그인 실패');</script>";
			echo("<script>location.href='new 1.html';</script>");
		}
	}
?>

</body>