<?php
include('db_connect.php');
include('lib.php');
include('smarty-3.1.33/libs/Smarty.class.php');
$smarty = new Smarty;

$id = $_GET['id'];
$query = "SELECT * FROM todolist where id = $id";                           //取一筆資料庫內容
$result = db_query($link, $query);
$rows = $result->fetch_all(MYSQLI_ASSOC);                                   
   
$smarty->assign('data', $rows[0]);
$smarty->display('update.tpl');

?>


        
        

