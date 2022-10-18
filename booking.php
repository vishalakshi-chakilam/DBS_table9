<?php
if(isset($_POST['start'])){
    // extract($_POST);
    $server = "localhost";
    $username = "root";
    $database = "railwaystation";//database name
    $password = "";//my sql password
// Create a database connection
$con = mysqli_connect($server, $username, $password,$database);

// Check for connection success
if(!$con){
    die("connection to this database failed due to" . mysqli_connect_error());
}
echo "Success connecting to the db";

    //$way = $_POST['oneway'];
    $from_location = $_POST['start'];
    $to_location = $_POST['end'];
    $count_adult = $_POST['adult'];
    $count_children = $_POST['children'];
    $class = $_POST['class'];

$sql = "INSERT INTO `railwaystation`.`ticket`(`source`,`destination`,`count_adults`,`count_children`,`class`) VALUES ('$from_location', '$to_location', '$count_adult', '$count_children','$class');";
//$sql = "INSERT INTO `trip`.`trip` (`name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES ('$name', '$age', '$gender', '$email', '$phone', '$desc', current_timestamp());"; 

if($con->query($sql) == true){
    echo "Booking info successfuly registerd in database";// for going to next hml page
}
    $con->close();
}
?>

