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

        $query = "select a.UR_UserID,b.UR_UserID ,a.UR_FNM_ID,a.UR_Rating,b.UR_Rating "
                . "from user_rating a , user_rating b"
                . "where a.ur_fnm_id = b.ur_fnm_id"
                . "and a.UR_id <> b.UR_id"
                . "group by a.UR_UserID,b.UR_UserID";
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

    // pattern for result  0:user 1  1:user 2    2:foodId    3:rating 1  4:rating 2
    function generateDictionary($result) {

        $row = mysql_fetch_array($result);
        $userA = $row[0];
        $userB = $row[1];
        $ratingA = array();
        $ratingB = array();
        $R;
        while ($row = mysql_fetch_array($result)) {
            if ($row[0] == $userA && $userB == $row[1]) {
                $ratingA[$row[2]] = $row[3];
                $ratingA[$row[2]] = $row[4];
            } else {
                $R = calculatePearson($ratingA, $ratingB);
                insertR($userA, $userB, $R);

                if ($row[0] != $userA)
                    $userA = $row[0];
                if ($userB != $row[1])
                    $userB = $row[1];
            }
        }
    }

    function calculatePearson($userA, $userB) {
        $sumA;
        $sumB;
        foreach ($userA as $key => $valueA) {
            $valueB = $userB[$key];

            $sumA+=$valueA;
            $sumB+=$valueB;

            $sqSumA += pow($valueA, 2);
            $sqSumB += pow($valueB, 2);

            $pSum+= $valueA * $valueB;
        }
        $num = $pSum - ($sumA * $sumB / count($userA));

        $den = ($sqSumA - pow($sumA, 2)) * ($sqSumB - pow($sumB, 2));

        if ($den == 0) {
            return 0;
        }
        return $num / $den;
    }

    function insertUserR($userA, $userB, $R) {
        
        $query="INSERT INTO ";
                
    }

}

?>
