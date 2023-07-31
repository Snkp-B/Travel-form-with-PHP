<?php
$insert = false;
if(isset($_POST['name'])){
    
   
   $server = "localhost";
   $username ="root";
   $password= "";
   $dbname = "trip";


   $con = mysqli_connect($server,$username,$password,$dbname);

   if(!$con){
    die("Connection failed : ".mysqli_connect_error());
   }
//    echo "Connection succesfull";




   $name = $_POST['name'];
   $age = $_POST['age'];
   $gender = $_POST['gender'];
   $email = $_POST['email'];
   $phone = $_POST['phone'];
   $desc = $_POST['desc'];
   $sql = "INSERT INTO `trip` (`name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) 
   VALUES ('$name', '$age', '$gender', '$email', '$phone', '$desc', current_timestamp());";
   

   if($con->query($sql)==true){
    $insert = true;
   }
   else{
    echo "Error: $sql <br>". $con->error;
    }
   $con->close();

}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Travel Form</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Borel&family=Poppins:wght@500&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="style.css">
</head>
<body>

    <img class='image'src="background.jpg">
    <div class="container">
        <h2>Welcome to Techonocrat ltd. Travel Form</h2>
        <p style="font-family: 'Borel', cursive; font-size: 20px;">Enter your details and submit this form to 
           confirm your participation in trip.</p>
    </div>       
        <?php
        if($insert==true){
        echo  "<p class='submission'>Thanks for submitting your form. Enjoy your trip!</p>";}  
        ?>
    
    <form action="index.php" method="post">
    <input type="text" name="name" id="name" placeholder="Enter your name">
    <input type="text" name="age" id="age" placeholder="Enter your age">
    <input type="text" name="gender" id="gender" placeholder="Enter your gender">
    <input type="email" name="email" id="email" placeholder="Enter your email">
    <input type="phone" name="phone" id="phone" placeholder="Enter your phone">
    <textarea name="desc" id="desc" cols="30" rows="10" placeholder="Enter any other info here..."></textarea>
    <button class="btn">Submit</button>
    <button class="btn">Reset</button>
    </form>


</body>
</html>
