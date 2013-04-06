<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of pearsonR
 *
 * @author Shashank
 */
include_once 'globalConsts.php';

class pearsonR {

    //put your code here
    function getDataset($query) {

        mysql_connect(SERVER_ADDRESS, USER, PASS);

        $query="SELECT ";
        if (mysqli_connect_errno()) {
            //echo "Could not connect to database";

            $response["success"] = 0;
            $response["message"] = "Failed to connect to database";
            echo json_encode($response);
            exit;
        }

        mysql_select_db(DATABASE);
        $result = mysql_query($query);

        if (mysql_num_rows($result)) {

            $items = array();

            while ($row = mysql_fetch_array($result)) {
                $item = array();
                $item['id'] = $row['MFC_ID'];
                $item['mfc_val'] = $row['MFC_Name'];
                array_push($items, $item);
            }
        }
        $array = [
            "foo" => "bar",
            "bar" => "foo",
        ];
    }

}

?>
