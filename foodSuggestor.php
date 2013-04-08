<?php

include_once 'globalConsts.php';
$response = array();

mysql_connect(SERVER_ADDRESS, USER, PASS);
$user_id=$_COOKIE["user_id"];

if (mysqli_connect_errno()) {
    //echo "Could not connect to database";

    $response["success"] = 0;
    $response["message"] = "Failed to connect to database";
    echo json_encode($response);
    exit;
}

mysql_select_db(DATABASE);
$sql = "SELECT UR_FNM_ID FROM user_rating, user_user_r_taste
        WHERE UR_UserID in(SELECT USER_2_ID FROM user_user_r_taste 
        WHERE USER_1_ID="+$user_id+" AND R>0.5)";
$result = mysql_query($sql);

if (mysql_num_rows($result)) {
    $response["success"] = 1;

    $items = array();

    while ($row = mysql_fetch_array($result)) {
        $item = array();
        $item['UR_FNM_ID'] = $row['UR_FNM_ID'];
        array_push($items, $item);
    }
}