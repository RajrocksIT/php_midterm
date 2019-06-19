<?php
/**
 * PraviinM
 */


require_once("config.php");

// print_r is to display the contents of an array() in PHP.
//print_r($_POST);

// Assigning $_POST values to individual variables for reuse.
$fname = $_POST['firstname'];
$lname = $_POST['lastname'];
$email = $_POST['email'];
$pnumber = $_POST['pnumber'];
$thisuserid = $_POST['serial'];

if ($_POST['submit'])
{
    $updatedRecord  = updateThisRecord($fname, $lname, $email, $pnumber, $thisuserid);
    echo "<br>The record is updated.</br>";
}


if ($_POST['delete_record'])
{
    $deleteRecord  = delete_a_particular_user($thisuserid);
    echo "<br>The record is deleted.</br>";
}








