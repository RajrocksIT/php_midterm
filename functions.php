<?php
/**
 * Rajesh Chinni
 */





//Create a new user

/**
 * @param $fname
 * @param $lname
 * @param $dob
 * @param $email
 * @param $city
 * @param $zip
 *
 * @return bool
 */
function createNewUser($fname, $lname, $email, $pnumber)
{
    global $mysqli;
    //Generate A random userid
    $character_array = array_merge(range(a, z), range(0, 9));
    $rand_string = "";
    for ($i = 0; $i < 6; $i++) {
        $rand_string .= $character_array[rand(
            0, (count($character_array) - 1)
        )];
    }
    // echo $rand_string;
    // echo $fname;
    // echo $lname;
    // echo $email;
    // echo $pnumber;
    $stmt = $mysqli->prepare(
        "INSERT INTO people (
		Serial,
		FirstName,
		LastName,
		EmailAddress,
		PhoneNumber
		)
		VALUES (
		'" . $rand_string . "',
		?,
		?,
		?,
		?
		)"
    );
    $stmt->bind_param("ssss", $fname, $lname, $email, $pnumber);
    $result = $stmt->execute();
    $stmt->close();
    return $result;

}


//Retrieve information for all users
/**
 * @return array
 */

function fetchAllUsers() {
  global $mysqli, $db_table_prefix;
  $stmt = $mysqli->prepare(
    "SELECT
		id,
		Serial,
		FirstName,
		LastName,
		EmailAddress,
		PhoneNumber
		
		FROM people"
  );
  $stmt->execute();
    $stmt->bind_result(
        $id,
        $Serial,
        $FirstName,
        $LastName,
        $EmailAddress,
        $PhoneNumber
    );

  while ($stmt->fetch()) {
    $row[] = array(
        'id'                    => $id,
        'serial'                => $Serial,
      'firstname'               => $FirstName,
      'lastname'                => $LastName,
      'email'                   => $EmailAddress,
      'pnumber'                 => $PhoneNumber
    );
  }
  $stmt->close();
  return ($row);
}



//fetch particular users record

/**
 * @param $userid
 *
 * @return array
 */
function fetchThisUser($Serial)
{
    global $mysqli;
    $stmt = $mysqli->prepare(
      "
    SELECT
    id,
    Serial,
    FirstName,
    LastName,
    EmailAddress,
    PhoneNumber

    FROM people
    WHERE
    Serial = ?
    LIMIT 1"
    );
    $stmt->bind_param("s", $Serial);
    $stmt->execute();
    $stmt->bind_result($id, $Serial, $FirstName, $LastName, $EmailAddress, $PhoneNumber);

  while ($stmt->fetch()) {
    $row[] = array(
      'id'                      => $id,
      'serial'                  => $Serial,
      'firstname'               => $FirstName,
      'lastname'                => $LastName,
      'email'                   => $EmailAddress,
      'pnumber'                  => $PhoneNumber

    );
  }
  $stmt->close();
  return ($row);
}


//Update selected users record.
/**
 * @param $fname
 * @param $lname
 * @param $city
 * @param $zip
 * @param $dob
 * @param $email
 * @param $userid
 *
 * @return bool
 */
function updateThisRecord($fname, $lname, $email, $pnumber, $serial)
{
    global $mysqli, $db_table_prefix;
    $stmt = $mysqli->prepare(
      "UPDATE " . $db_table_prefix . "people
		SET
		FirstName = ?,
		LastName = ?,
		EmailAddress = ?,
		PhoneNumber = ?
		WHERE
		Serial = ?
		LIMIT 1"
    );
    $stmt->bind_param("sssss", $fname, $lname, $email, $pnumber, $serial);
    $result = $stmt->execute();
    $stmt->close();

    return $result;
}



//Completely sanitizes text
function sanitize($str)
{
    return strtolower(strip_tags(trim(($str))));
}

//Checks if first name, last name, email id and date of birth already exists


function delete_a_particular_user($thisuserid )
{
    global $mysqli, $db_table_prefix;
    $userid = $thisuserid;
    $result = mysqli_query($mysqli, "DELETE FROM people WHERE Serial='$userid' ");
    //$result = mysqli_fetch_row($result);
    if ($result === TRUE) {
        echo "Record deleted successfully";
    } else {
        echo "Error deleting record: ";
    }
    return $result;
}














