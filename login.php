<?php
if (!(isset($_POST['username']) && isset($_POST['password']) ) || $_POST['username'] == "" || $_POST['password'] == "")
    header('Location: index.php');

/* @var $_POST type */
$username = $_POST['username'];
$password = $_POST['password'];

include_once 'globalConsts.php';

$con = mysqli_connect(SERVER_ADDRESS, USER, PASS,DATABASE)or die("Connection Error".mysql_error());

// to validate user
//mysqli_select_db($con,"ald") or die ("DB Selection erro".  mysql_error());
$query = "SELECT user_id FROM login WHERE username='" . $username . "' AND password='" . $password . "'";

$result = mysqli_query($con,$query) or die($query . "<br/><br/>Error: " . mysql_error());
$count = mysqli_num_rows($result);
/* @var $count type */

$row = mysqli_fetch_array($result);
$user_id=$row[0];
echo $user_id;
if ($count > 0) {
    $_SESSION['user_id']=$user_id;
    header('Location: home.php');
} else {
    header('Location: index.php');
}
//
?>
