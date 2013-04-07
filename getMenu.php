<?php

if (isset($_REQUEST['id'])) {
    include_once 'globalConsts.php';
    
    $id= $_REQUEST['id'];
    
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
    $sql = "SELECT fnm.FNM_Name,fnm.FNM_ID FROM food_nutrition_master fnm,restaurant_menu rm"
            ." WHERE rm.RM_Restaurant_ID=".$id
            ." AND rm.FNM_ID=fnm.FNM_ID";
    $result = mysql_query($sql);

    if (mysql_num_rows($result)) {
        $response["success"] = 1;

        $items = array();

        while ($row = mysql_fetch_array($result)) {
            $item = array();
            $item['FNM_ID'] = $row['FNM_ID'];
            $item['FNM_Name'] = $row['FNM_Name'];
            array_push($items, $item);
        }

        $response['items'] = $items;

        echo json_encode($response);
    }
}