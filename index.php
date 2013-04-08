<!DOCTYPE html>
<html>
    <head>
        <?php
        include_once 'meta.php';
        session_start();
        ?>
        <script type="text/javascript">
            function allss() {
                alert('hello');
            }

            function validate() {
                alert('hello');
                alert(document.getElementById('password').val());// +"\n"+document.getElementById("confirm_password").val());
                if (!document.getElementById("password").val() == document.getElementById("confirm_password").val())
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
        <?php
        include_once 'header.php';
        ?>
        <div class="container">
            <div class="well">
                <form name="login" action="login.php" method="post" >
                    <legend>Login</legend>
                    <table>
                        <tr>
                            <td><input type="text" name="username" placeholder="User Name"></td>
                        </tr>
                        <tr>
                            <td><input type="password" name="password" placeholder="Password"></td>
                        </tr>
                        <tr>
                            <td align="right"><input type="submit" value="Login" class="btn btn-primary" ></td>
                        </tr>
                    </table>

                </form>
            </div>
            <div class="well">
                <form onSubmit="return validate()" action="RegisterNewUser.php" method="post" >
                    <legend>Register</legend>
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
                            <td align="right"><input type="submit" value="Register" class="btn btn-primary"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <?php
        // put your code here
        ?>
    </body>

</html>
