<html>
<body>
    
    <form action='update2.php'>
        <textarea name='id' readonly=true style='width:15px;height:20px;resize:none' >{$data['id']}</textarea><br>
        <p>標題 : </p><input type='text' name='title' value='{$data["title"]}'><br>
        <p>內容 : </p><br><textarea name='detail' style='width:200px;height:80px;resize:none' >{$data['detail']}</textarea><br>
        <button type='submit'>確認更改</button>
    </form>

    <a href='index.php'><button type='submit'>返回</button></a>
</body>
</html>