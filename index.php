<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <script type="text/javascript">
            function allss(){
                alert('hello');
            }
        
        function validate(){
            alert('hello');
            alert(document.getElementById('password').val());// +"\n"+document.getElementById("confirm_password").val());
            if(!document.getElementById("password").val()==document.getElementById("confirm_password").val())
            {
                alert("Passwords do no match");
                return false;
            }
            //else
            //   return true;
            //return document.getElementById("password").value==document.getElementById("confirm_password").value;
            
        }
   
        </script>
    </head>
    <body>

        <form name="login" action="login.php" method="post" >
            <table>
                <tr>
                    <td><input type="text" name="username" placeholder="User Name"></td>
                </tr>
                <tr>
                    <td><input type="password" name="password" placeholder="Password"></td>
                </tr>
                <tr>
                    <td align="right"><input type="submit" value="Submit"></td>
                </tr>
            </table>

        </form>

        <form onSubmit="return validate()" action="RegisterNewUser.php" method="post" >
            <table>
                <tr>
                    <td><input type="text" name="username" placeholder="User Name"></td>
                </tr>
                <tr>
                    <td><input type="email" name="email" placeholder="Email"></td>
                </tr>
                <tr>
                    <td><input type="password" id="password" name="pass" placeholder="Password"></td>
                </tr>
                <tr>
                    <td><input type="password" id="confirm_password" name="pass2" placeholder="Confirm Password"></td>
                </tr>
                <tr>
                    <td align="right"><input type="submit" value="Submit"></td>
                </tr>
            </table>

        </form>
        <?php
        // put your code here
        ?>
    </body>

</html>
