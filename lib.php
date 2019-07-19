<?php

function db_query($link, $query) {
    //echo $query;
    $result = mysqli_query($link , $query);
    if(!$result)
    {
        echo "失敗".mysqli_error($link);
        exit;
    }
    return $result;
}
