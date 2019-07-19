<?php
$link = mysqli_connect("localhost","root","","todolist_ze");                //連資料庫
if(!$link)
{
    echo "連接失敗".mysqli_connect_error($link);
    exit;
}
