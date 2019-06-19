<?php

print_r($_POST);

require_once("config.php");

// Assigning $_POST values to individual variables for reuse.

$firstname = $_POST['firstname'];
$lname = $_POST['lastname'];
$email = $_POST['emailaddress'];
$pnumber = $_POST['phonenumber'];



$newuser = createNewUser($firstname, $lname, $email, $pnumber);
echo "<br></br>";
echo $newuser;



/**
$newuser = createNewUser($firstname, $lname, $dob, $email, $city, $zip);
echo $newuser;

*/



?>
