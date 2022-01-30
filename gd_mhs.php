<?php
// session_start();
include('security.php');
include('includes/header.php');
include('includes/m_navbar.php');
$user =$_SESSION['username'];
?>


<div class="container-fluid">

<!--   
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
          Tambah User
        </button>
      </h6>
    </div> -->

    <div class="card-body">

      <div class="table-responsive">

        <?php
        $query = "SELECT * FROM user WHERE username='$user' ORDER BY id";
        $query_run = mysqli_query($connection, $query);
        ?>


        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th> Nama </th>
              <th> Drive</th>
            </tr>
          </thead>
          <tbody>
 <?php
            if (mysqli_num_rows($query_run) > 0) {
              while ($row = mysqli_fetch_assoc($query_run)) {
            ?>

                <tr>
                  <td><?= $row['username']; ?></td>
                  <td>
                      <a href="<?= $row['link']; ?>" target="_blank"><button type="submit" class="btn btn-success"><i">Upload File</i></button></a>
                   </td>

                  </tr>
            <?php
              }
            } else {
              echo "No Record Found";
            }
            ?>
          </tbody>
        </table>

      </div>
    </div>
  </div>

</div>
</div>
</div>
<!-- /.container-fluid -->



<?php
include('includes/scripts.php');
include('includes/footer.php');
?>