<?php

include_once 'globalConsts.php';
$response = array();

mysql_connect(SERVER_ADDRESS, USER, PASS);


if (mysqli_connect_errno()) {
    //echo "Could not connect to database";

    $response["success"] = 0;
    $response["message"] = "Failed to connect to database";
    echo json_encode($response);
    exit;
}

mysql_select_db(DATABASE);
$sql = "SELECT * FROM Major_Food_Category";
$result = mysql_query($sql);

if (mysql_num_rows($result)) {
    $response["success"] = 1;

    $items = array();

    while ($row = mysql_fetch_array($result)) {
        $item = array();
        $item['id'] = $row['MFC_ID'];
        $item['mfc_val'] = $row['MFC_Name'];
        array_push($items, $item);
    }

    $response['items'] = $items;

    echo json_encode($response);
}
