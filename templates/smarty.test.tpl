<html>
<body>
    <h1>Hello </h1>
    <table>
        <tr>
            <th>id</th>
            <th>title</th>
            <th>date</th>
        </tr>
        {foreach from=$rows item=row}
        <tr>
            <td>{$row['id']}</td>
            <td><a href='detail.php?id={$row["id"]}'>{$row['title']}</a></td>
            <td>{$row['date']}</td>
        </tr>
        {/foreach}
    </table>
</body>
</html>