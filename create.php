<?php
include('db_connect.php');
include('lib.php');

$title = $_POST['title'];
$detail = $_POST['detail'];
$time = date("Y/m/d H:i:s");

$query = "INSERT into todolist (title,detail,date) value ('$title','$detail','$time')";     //內容存進資料庫

$result = db_query($link, $query);

header("Location: index.php");
?>