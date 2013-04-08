<?php

if (isset($_REQUEST['user_id']) && isset($_REQUEST['date_t']) && isset($_REQUEST['food_id']) && isset($_REQUEST['meal_t'])) {

    include_once 'globalConsts.php';
    $user_id=$_COOKIE['user_id'];
    
    $query = "Insert INTO user_food_history (UFH_User_ID,UFH_FNM_ID,UFH_Quantity,UFH_Meal_Type) values(" . $user_id . "," . $_REQUEST['food_id'] . ",1,'" . $_REQUEST['meal_t'] . "')";
    mysql_connect(SERVER_ADDRESS, USER, PASS);


    if (mysqli_connect_errno()) {
        //echo "Could not connect to database";

        $response["success"] = 0;
        $response["message"] = "Failed to connect to database";
        echo json_encode($response);
        exit;
    }

    mysql_select_db(DATABASE);

    $result = mysql_query($query);

    if ($result) {
        $response["success"] = 1;
        $response['query'] = $query;
    }

    echo json_encode($response);
}
?>
