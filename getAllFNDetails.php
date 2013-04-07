<?php

if (isset($_REQUEST['pfc_id'])) {

    //$mfcId =  filter_input(INPUT_POST, $_REQUEST['pfc_id'], FILTER_DEFAULT);
    $pfcId = $_REQUEST['pfc_id'];

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
    $sql = "SELECT * FROM food_nutrition_master,measure_serving WHERE PFC_ID='" . $pfcId . "'"
            . "AND FNM_MEasure_Unit=MS_ID ";

    $result = mysql_query($sql);

    if (mysql_num_rows($result)) {
        $response["success"] = 1;

        $items = array();

        while ($row = mysql_fetch_array($result)) {
            $item = array();

            $item['FNM_ID'] = $row['FNM_ID'];
            $item['FNM_Name'] = $row['FNM_Name'];
            $item['FNM_Description'] = $row['FNM_Description'];
            $item['PFC_ID'] = $row['PFC_ID'];
            $item['Total_Fat'] = $row['Total_Fat'];
            $item['Sat_Fat'] = $row['Sat_Fat'];
            $item['Trans_Fat'] = $row['Trans_Fat'];
            $item['Chol'] = $row['Chol'];
            $item['Sodium'] = $row['Sodium'];
            $item['Total_Carb'] = $row['Total_Carb'];
            $item['Diet_Fibre'] = $row['Diet_Fibre'];
            $item['Sugar'] = $row['Sugar'];
            $item['Protein'] = $row['Protein'];
            $item['Calcium'] = $row['Calcium'];
            $item['Potassium'] = $row['Potassium'];
            $item['Alcohol'] = $row['Alcohol'];
            $item['Calories'] = $row['Calories'];
            $item['MS_Name']=$row['MS_Name'];
            array_push($items, $item);
        }

        $response['items'] = $items;

        echo json_encode($response);
    }
}

