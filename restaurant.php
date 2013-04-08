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

            function saveRating(id) {
                alert(id);
                var rating = $('#rating_' + id + ' :selected').val();
                alert(rating);
                $.ajax({
                    url: "/ALDWebsite/saveRating.php?user_id=1&fnm_id=" + id + "&rating=" + rating,
                    type: "GET",
                    contentType: 'application/json; charset=utf-8',
                    dataType: "json",
                    success: function(data) {
                        alert("Rating accepted");
                    },
                    error: function(data) {
                        alert("Some Error Occured ");
                        // alert(data.message);
                    }
                });

            }

            function populateRestaurant(data) {
                // fetch list of restaurants in a dropdown 
                debugger;
                var $subType = $("#rst");
                var items = data.items;
                $.each(items, function() {
                    $subType.append($('<option value=' + this.id_r + '>' + this.name_r + ' </option>'));
                });

            }

            function fetchRestaurant() {
                $.ajax({
                    url: "/ALDWebsite/getRestaurant.php",
                    type: "GET",
                    contentType: 'application/json; charset=utf-8',
                    dataType: "json",
                    success: function(data) {
                        populateRestaurant(data);

                    },
                    error: function(data) {
                        debugger;
                        alert("Some Error Occured");
                        //location.reload(true);
                    }
                });

            }

            function populateMenu(data) {
                var table = $('#menu');
                var items = data.items;
                $("#menu tr:gt(0)").remove();
                $.each(items, function() {
                    table.append($(
                            '<tr><td>' + this.FNM_Name + '</td>'
                            + '<td><select id=rating_' + this.FNM_ID + '>'
                            + '<option value=5>5</option>'
                            + '<option value=4.5>4.5</option>'
                            + '<option value=4>4</option>'
                            + '<option value=3.5>3.5</option>'
                            + '<option selected="selected" value=3>3</option>'
                            + '<option value=2.5>2.5</option>'
                            + '<option value=2>2</option>'
                            + '<option value=1.5>1.5</option>'
                            + '<option value=1>1</option>'
                            + '<option value=0.5>0.5</option>'
                            + '<select></td>'
                            + '<td> <a class="btn btn-success" href="#" onclick="saveRating(' + this.FNM_ID + ');">'
                            + '<i class="icon-ok icon-white"></i> Add</a></td></tr>'
                            ));
                });
            }

            function fetchMenu() {
                // fetch all menu items of a restaurant in a table
                var men = $('#rst :selected').val();
                $.ajax({
                    url: "/ALDWebsite/getMenu.php?id=" + men,
                    type: "GET",
                    contentType: 'application/json; charset=utf-8',
                    dataType: "json",
                    success: function(data) {
                        populateMenu(data);

                    },
                    error: function(data) {
                        debugger;
                        alert("Some Error Occured");
                        //location.reload(true);
                    }
                });

            }
            $(document).ready(function() {
                fetchRestaurant();
            });
        </script>
    </head>
    <body>
        <?php
        include_once 'header.php';
        ?>
        <div class="well">
            Select a restaurant <i class="icon-home"></i> <select id="rst" name="restt" onchange ="fetchMenu();">
                <option>Select One</option>
            </select> 
        </div>
        <div class="well-large">
            <legend>Menu</legend>
            <table id="menu" class="table table-bordered table-hover table-striped">
                <th>Item</th><th>Rate</th>
            </table>
        </div>
    </body>
</html>
