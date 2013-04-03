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
            $item['FNM_Measure_Unit'] = $row['FNM_Measure_Unit'];
            $item['Total_Fat'] = $row['Total_Fat'];
            $item['Total_Fat_Unit'] = $row['Total_Fat_Unit'];
            $item['Sat_Fat'] = $row['Sat_Fat'];
            $item['Sat_Fat_Unit'] = $row['Sat_Fat_Unit'];
            $item['Trans_Fat'] = $row['Trans_Fat'];
            $item['Trans_Fat_Unit'] = $row['Trans_Fat_Unit'];
            $item['Chol'] = $row['Chol'];
            $item['Chol_Unit'] = $row['Chol_Unit'];
            $item['Sodium'] = $row['Sodium'];
            $item['Sodium_Unit'] = $row['Sodium_Unit'];
            $item['Total_Carb'] = $row['Total_Carb'];
            $item['Total_Carb_Unit'] = $row['Total_Carb_Unit'];
            $item['Diet_Fibre'] = $row['Diet_Fibre'];
            $item['Diet_Fibre_Unit'] = $row['Diet_Fibre_Unit'];
            $item['Sugar'] = $row['Sugar'];
            $item['Sugar_Unit'] = $row['Sugar_Unit'];
            $item['Protein'] = $row['Protein'];
            $item['Protein_Unit'] = $row['Protein_Unit'];
            $item['Calcium'] = $row['Calcium'];
            $item['Calcium_Unit'] = $row['Calcium_Unit'];
            $item['Potassium'] = $row['Potassium'];
            $item['Potassium_Unit'] = $row['Potassium_Unit'];
            $item['Alcohol'] = $row['Alcohol'];
            $item['Alcohol_Unit'] = $row['Alcohol_Unit'];
            $item['Calories'] = $row['Calories'];
            $item['Calories_Unit'] = $row['Calories_Unit'];
            $item['MS_Name']=$row['MS_Name'];
            array_push($items, $item);
        }

        $response['items'] = $items;

        echo json_encode($response);
    }
}

