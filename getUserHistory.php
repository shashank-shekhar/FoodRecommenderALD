<?php

include_once 'globalConsts.php';
$response = array();

mysql_connect(SERVER_ADDRESS, USER, PASS);
$user_id = $_COOKIE["user_id"];

if (mysqli_connect_errno()) {
    //echo "Could not connect to database";

    $response["success"] = 0;
    $response["message"] = "Failed to connect to database";
    echo json_encode($response);
    exit;
}

mysql_select_db(DATABASE);
$currentDate= date("m/d/Y");

$sql = "SELECT FNM_NAME FROM user_food_history"
        . " UFH_USER_ID=" . $user_id . " AND UFH_Date))";
        
$result = mysql_query($sql);

$items = array();
if (mysql_num_rows($result)) {
    $response["success"] = 1;



    while ($row = mysql_fetch_array($result)) {
        $item = array();
        $item['FNM_NAME'] = $row['FNM_NAME'];
        array_push($items, $item);
    }
}

$response['items'] = $items;

echo json_encode($response);
