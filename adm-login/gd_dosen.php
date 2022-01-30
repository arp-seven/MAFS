<?php
// session_start();
include('security.php');
include('includes/header.php');
include('includes/d_navbar.php');
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
        $query = "SELECT * FROM kelompok";
        $query_run = mysqli_query($connection, $query);
        ?>

        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr style="text-align:center;">
              <th> No </th>
              <th> Bimbingan </th>
              <th> Ketua Kelompok </th>
              <th> Link</th>
              <th > WA Ketua</th>
            </tr>
          </thead>
          <tbody>
            <?php
            if (mysqli_num_rows($query_run) > 0) {
              while ($row = mysqli_fetch_assoc($query_run)) {
            ?>
                <tr>
                  <td style="text-align:center;"><?php echo $row['id']; ?></td>
                  <td><?php echo $row['nama_kelompok']; ?></td>
                  <td><?php echo $row['ketua']; ?></td>
                  <td style="text-align:center;">
                      <a href="<?php echo $row['link']; ?>" target="_blank"><button type="submit" class="btn btn-success"><i>Buka Drive</i></button></a>
                   </td>
                  <td style="display:none;"><?php echo $row['wa']; ?></td>
                  <td style="text-align:center;">
                      <a href="http://wa.me/<?php echo $row['wa']; ?>" target="_blank"><button type="submit" class="btn btn-success"><i class="fab fa-whatsapp"></i></button></a>
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
<!-- /.container-fluid -->



<?php
include('includes/scripts.php');

?>