<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>單一檔案上傳 - 封装成函式</title>
</head>
<body>

<form action="doAction.php" method="post" enctype="multipart/form-data">
    <!-- 限制上傳檔案的最大值 -->
    <input type="hidden" name="MAX_FILE_SIZE" value="2097152">

    <!-- accept 限制上傳檔案類型 -->
    <input type="file" name="myFile" accept="image/jpeg,image/jpg,image/gif,image/png">

    <input type="submit" value="上傳檔案">
</form>

</body>
</html>
