<?php
// session_start();
include('security.php');
include('includes/header.php');
include('includes/m_navbar.php');
$user =$_SESSION['username'];
?>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-success"> Edit Profil </h6>
    </div>
    <div class="card-body">

<?php 
 			$query = "SELECT * FROM user WHERE username='$user' ";
            $query_run = mysqli_query($connection, $query);

            foreach($query_run as $row)
            {
                ?>
				<form action="edit_mhs.php" method="POST" >

                        <input type="hidden" name="edit_id" value="<?php echo $row['id'] ?>">

                        <div class="form-group">
                            <label> Username </label>
                            <input type="text" name="edit_username" readonly value="<?php echo $row['username'] ?>" class="form-control"
                                placeholder="Enter Username">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" name="edit_email" readonly value="<?php echo $row['email'] ?>" class="form-control"
                                placeholder="Enter Email">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="edit_password" readonly value="<?php echo $row['password'] ?>"
                                class="form-control" placeholder="Enter Password">
                        </div>

                        <input type="hidden" name="edit_id" value="<?php echo $row['id']; ?>">
                      	<button type="submit" name="edit_btn" class="btn btn-success">Edit</button>

                </form>
<?php
        }
    ?>

    </div>
</div>

<?php
include('includes/scripts.php');
include('includes/footer.php');
?>