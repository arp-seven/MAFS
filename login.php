<?php
session_start();
include('includes/header.php');

?>
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/auth.css" rel="stylesheet">

        <div class="auth-content">
            <div class="card">
                <div class="card-body text-center">
                    <div class="mb-4">
                        <img class="brand" src="assets/img/bootstraper-logo.png" alt="bootstraper logo">
                    </div>
                    <h6 class="mb-4 text-muted">Halaman Login</h6>

                     <?php

                    if(isset($_SESSION['status']) && $_SESSION['status'] !='') 
                    {
                        echo '<h2 class="bg-danger text-white"> '.$_SESSION['status'].' </h2>';
                        unset($_SESSION['status']);
                    }
                ?>

                    <form  action="code.php" method="POST">
                        <div class="mb-3 text-start">
                            <label for="username" class="form-label">Username</label>
                            <input type="Username"  name="username" class="form-control" placeholder="Enter Username" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label for="password" class="form-label">Password</label>
                            <input type="password"  name="passwordd"  class="form-control" placeholder="Password" required>
                        </div>
                        <button type="submit" name="login_btn" class="btn btn-primary btn-user btn-block">Login</button>
                    </form> 
                </div>
            </div>
        </div>
    </div>
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>

<?php
include('includes/scripts.php'); 
?>
