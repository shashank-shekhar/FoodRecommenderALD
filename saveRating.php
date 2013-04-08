<?php

if (isset($_REQUEST['user_id']) && isset($_REQUEST['fnm_id']) && isset($_REQUEST['rating'])) {

    include_once 'globalConsts.php';
    
    session_start();
    $stat=session_status();
    
    $user_id=$_COOKIE["user_id"];
    
    $query = "Insert INTO user_rating (UR_UserID,UR_Rating,UR_FNM_ID) values(" . $user_id . "," . $_REQUEST['rating'] . ",'" . $_REQUEST['fnm_id'] . "')";
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
