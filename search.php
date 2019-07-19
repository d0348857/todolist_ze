<?php
include('db_connect.php');
include('lib.php');
$id = $_POST['id'];
$query = "SELECT * FROM todolist where id = $id";                       //取一筆資料
$result = db_query($link, $query);

while($row = $result->fetch_object())                                   //印出內容
{
    
    echo "標題 : $row->title<br>";
    echo "內容 : <br><textarea readonly=true style='width:200px;height:80px;resize:none' >$row->detail</textarea><br>";
    echo "日期 : $row->date<br>";
} 


echo "<a href='index.php'><button type='submit'>返回</button></a>";
echo "<a href='update.php?id=$id'><button type='submit'>更改</button></a>";
echo "<a href='delete.php?id=$id'><button type='submit'>刪除</button></a>";
?>