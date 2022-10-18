<?php
    $conn=mysqli_connect("localhost","root","");
    $database=mysqli_select_db($conn,'railway');

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $email = $_POST['email'];
        $name = $_POST['name'];
        $password = $_POST['password'];
        $query = mysqli_query($conn, "SELECT * FROM `users` WHERE email = '$email'");
        if(mysqli_num_rows($query)>0){
            echo "<h1>user already exist</h1>";
        }
        else {
            $sql = "INSERT INTO `users` (`email`,`name`,`password`) VALUES ('$email','$name','$password');";
            mysqli_query($conn, $sql);
            header("location:../railway%20booking/home.php");
        }
    }
?>
