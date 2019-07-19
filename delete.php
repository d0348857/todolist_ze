<?php
include('db_connect.php');
include('lib.php');
$id = $_GET['id'];
$query = "delete FROM todolist where id = $id";                     //刪除資料

$result = db_query($link, $query);



header("Location: index.php");
?>


