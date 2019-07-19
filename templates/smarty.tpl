<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    </head>    
    <body class="container col-4 ">
        <h1>記事本 </h1>
        <table class="table table-striped ">
            <thead class="table-primary">
                <tr>
                    <th>號碼</th>
                    <th>標題</th>
                    <th>日期</th>
                </tr>
            </thead>
            <tbody> 
                {foreach from=$rows item=row key=i}
                <tr>
                    <th>{if isset($smarty.get.page)}{($smarty.get.page|intval)*10-9+$i}{else}{$i+1}{/if}</th>
                    <td><a href='detail.php?id={$row["id"]}'>{$row['title']}</a></td>
                    <td>{$row['date']}</td>
                </tr>
                {/foreach}
            </tbody>
        </table>
        <a href='index.php?page=1&sort=id'><button class="btn btn-primary">首頁</button></a>
        {if isset($last)} 
        <a href='index.php?page={$last}&sort={$sort}'><button class="btn btn-secondary">上一頁</button></a>
        {/if}
    
        {if isset($next)}
        <a href='index.php?page={$next}&sort={$sort}'><button class="btn btn-secondary">下一頁</button></a>
        {/if}
        <a href='index.php?page={$end}&sort={$sort}'><button class="btn btn-secondary">尾頁</button></a>
        {if $sort == "id"}
        <a href='index.php?page=1&sort=date'><button class="btn btn-light">排序</button></a>
        {else}
        <a href='index.php?page=1&sort=id'><button class="btn btn-dark">排序</button></a>
        {/if}
        <a href="create.html">
            <button class="btn btn-primary">新增</button>
        </a>
        <br>
        <!-- <form action="search.php" method="POST">
            
            <p>以號碼搜尋</p>
            <input type="text" name="id">
            <button type="submit">搜尋</button>
            
        </form> -->
        <form action="index.php">
            <div class="form-group  ">
                <label for="Inputtitle">標題搜尋</label>
                <input type="text" name="title" class="form-control" id="Inputtitle" placeholder="輸入標題">
                <button type="submit" class="btn btn-secondary">搜尋</button>
            </div>
        </form>

        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    </body>    

</html>