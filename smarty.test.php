<?php
include('smarty-3.1.33/libs/Smarty.class.php');
$smarty = new Smarty;

$name = '嘖嘖';
$data = [
    (object) [
        'id' => 1,
        'title' => 'one',
        'detail' => 'abc'
    ],
    (object) [
        'id' => 2,
        'title' => 'two',
        'detail' => 'def'
    ]
];

$smarty->assign('name', $name);
$smarty->assign('data', $data);

$smarty->display('smarty.test.tpl');