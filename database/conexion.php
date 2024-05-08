<?php

$con = mysqli_connect("localhost", "root", "", "bdacademy");
//$con = mysqli_connect("sql300.epizy.com", "if0_34663650", "rVFm53GEHJxB", "if0_34663650_bdacademy");

$accents = mysqli_query($con,"SET NAMES 'utf8'");


if (mysqli_connect_errno()) {
    die("Connection error: " . mysqli_connect_error());
}
?>