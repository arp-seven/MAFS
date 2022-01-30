<?php
include('security.php');

if(isset($_POST['userbtn']))
{
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $cpassword = $_POST['confirmpassword'];
    $usertype = $_POST['usertype'];
    $link = $_POST['link'];
    
    $email_query = "SELECT * FROM user WHERE email='$email' ";
    $email_query_run = mysqli_query($connection, $email_query);
    if(mysqli_num_rows($email_query_run) > 0)
    {
        $_SESSION['status'] = "Email Already Taken. Please Try Another one.";
        $_SESSION['status_code'] = "error";
        header('Location: user.php');  
    }
    else
    {
        if($password === $cpassword)
        {
            $query = "INSERT INTO user (username,email,password,usertype,link) VALUES ('$username','$email','$password','$usertype','$link')";
            $query_run = mysqli_query($connection, $query);
            
            if($query_run)
            {
                // echo "Saved";
                $_SESSION['status'] = "Admin Profile Added";
                $_SESSION['status_code'] = "success";
                header('Location: user.php');
            }
            else 
            {
                $_SESSION['status'] = "Admin Profile Not Added";
                $_SESSION['status_code'] = "error";
                header('Location: user.php');  
            }
        }
        else 
        {
            $_SESSION['status'] = "Password and Confirm Password Does Not Match";
            $_SESSION['status_code'] = "warning";
            header('Location: user.php');  
        }
    }

}

if(isset($_POST['updatebtn']))
{
    $id = $_POST['edit_id'];
    $username = $_POST['edit_username'];
    $email = $_POST['edit_email'];
    $password = $_POST['edit_password'];

    $query = "UPDATE user SET username='$username', email='$email', password='$password' WHERE id='$id' ";
    $query_run = mysqli_query($connection, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Your Data is Updated";
        $_SESSION['status_code'] = "success";
        header('Location: profil_mhs.php'); 
    }
    else
    {
        $_SESSION['status'] = "Your Data is NOT Updated";
        $_SESSION['status_code'] = "error";
        header('Location: profil_mhs.php'); 
    }
}

if(isset($_POST['updateadm']))
{
    $id = $_POST['edit_id'];
    $username = $_POST['edit_username'];
    $email = $_POST['edit_email'];
    $password = $_POST['edit_password'];

    $query = "UPDATE user SET username='$username', email='$email', password='$password' WHERE id='$id' ";
    $query_run = mysqli_query($connection, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Your Data is Updated";
        $_SESSION['status_code'] = "success";
        header('Location: user.php'); 
    }
    else
    {
        $_SESSION['status'] = "Your Data is NOT Updated";
        $_SESSION['status_code'] = "error";
        header('Location: user.php'); 
    }
}


if(isset($_POST['delete_btn']))
{
    $id = $_POST['delete_id'];

    $query = "DELETE FROM user WHERE id='$id' ";
    $query_run = mysqli_query($connection, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Your Data is Deleted";
        $_SESSION['status_code'] = "success";
        header('Location: user.php'); 
    }
    else
    {
        $_SESSION['status'] = "Your Data is NOT DELETED";       
        $_SESSION['status_code'] = "error";
        header('Location: user.php'); 
    }    
}

if(isset($_POST['login_btn']))
{   
    $id = $_POST['id'];
    $user = mysqli_real_escape_string($connection,$_POST['username']);
    $password_login = mysqli_real_escape_string($connection,$_POST['passwordd']); 

    $query = "SELECT * FROM user WHERE username='$user' AND password='$password_login' LIMIT 1";
    $query_run = mysqli_query($connection, $query);
    $usertypes = mysqli_fetch_array($query_run);

    if ($usertypes['usertype'] == "admin")
    {
        $_SESSION['username'] = $user;
        header('Location: index.php');
    }
    else if($usertypes['usertype'] == "dosen")
    {
        $_SESSION['username'] = $user;
          echo '<script type ="text/JavaScript">';  
          echo 'alert("Cie Mau Ngehek Yah..")';  
          echo '</script>';
    }
    else if($usertypes['usertype'] == "mahasiswa")
    {
        $_SESSION['username'] = $user;
          echo '<script type ="text/JavaScript">';  
          echo 'alert("Cie Mau Ngehek Yah..")';  
          echo '</script>';
    }
    else
    {
        $_SESSION['status'] = "Email / Password is Invalid";
        header('Location: login.php');
    }
}


if(isset($_POST['logout_btn']))
{
    session_destroy();
    unset($_SESSION['username']);
    header('Location: login.php');
}

?>