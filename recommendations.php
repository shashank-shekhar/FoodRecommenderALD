<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <?php
        include_once 'meta.php';
        ?>
        <script type="text/javascript">
            function populateRecommendation_h(data) {
                //alert('yo');
                var items = data.items;
                var table = $("#recc_h");
                //$("#recc tr:gt(0)").remove();
                //var count = 0;
                $.each(items, function() {
                    //if (count % 2 == 0) {
                        table.append($('<tr><td>' + this.FNM_NAME + '</td></tr>'));
                    //}
                    //count += 1;
                });
            }
            function populateRecommendation(data) {
                //alert('yo');
                var items = data.items;
                var table = $("#recc");
                //$("#recc tr:gt(0)").remove();
                var count = 0;
                $.each(items, function() {
                    if (count % 2 == 0) {
                        table.append($('<tr><td>' + this.FNM_NAME + '</td></tr>'));
                    }
                    count += 1;
                });
            }
            function fetchRecommendations_h() {
                //alert('yoyo');
                $.ajax({
                    url: "/ALDWebsite/healthySuggestor.php",
                    type: "GET",
                    contentType: 'application/json; charset=utf-8',
                    dataType: "json",
                    success: function(data) {
                        debugger;
                        populateRecommendation_h(data);
                    },
                    error: function(data) {

                        alert("Some Error Occured ");
                        //alert(data.message);
                    }
                });

            }
            function fetchRecommendations() {
                //alert('yoyo');
                $.ajax({
                    url: "/ALDWebsite/foodsuggestor.php",
                    type: "GET",
                    contentType: 'application/json; charset=utf-8',
                    dataType: "json",
                    success: function(data) {
                        debugger;
                        populateRecommendation(data);
                    },
                    error: function(data) {

                        alert("Some Error Occured ");
                        //alert(data.message);
                    }
                });

            }
            $(document).ready(function() {
                fetchRecommendations();
                fetchRecommendations_h();
            });
        </script>
    </head>
    <body>
        <?php
        include_once 'header.php';
        ?>

        <div class="container">
            <div class="well">

                <table id="recc" class="table table-bordered table-condensed table-striped table-hover">
                    <legend> Recommendations based on your taste</legend>
                </table>
                <table id="recc_h" class="table table-bordered table-condensed table-striped table-hover">
                    <legend> Recommendations based on your profile</legend>
                </table>
            </div>
        </div>
    </body>
</html>
