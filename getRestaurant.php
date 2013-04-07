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
$sql = "SELECT RMA_ID,RMA_Name FROM restaurant_master  ";
$result = mysql_query($sql);

if (mysql_num_rows($result)) {
    $response["success"] = 1;

    $items = array();

    while ($row = mysql_fetch_array($result)) {
        $item = array();
        $item['id_r'] = $row['RMA_ID'];
        $item['name_r'] = $row['RMA_Name'];
        array_push($items, $item);
    }

    $response['items'] = $items;

    echo json_encode($response);
}
