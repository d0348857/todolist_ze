<?php
include('db_connect.php');
include('lib.php');
$id = $_GET['id'];                          
$title = $_GET['title'];
$detail = $_GET['detail'];
$time = date("Y/m/d H:i:s");

$query = "update todolist set title='$title',detail='$detail',date='$time' where id='$id'";

$result = db_query($link, $query);


header("Location: detail.php?id=$id");
?>