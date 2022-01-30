<?php
include('includes/header.php');  
?>


<nav id="sidebar" class="active">
            <div class="sidebar-header">
                <img src="assets/img/bootstraper-logo.png" alt="bootraper logo" class="app-logo">
            </div>
            <ul class="list-unstyled components text-secondary">
                <li>
                    <a href="index.php"><i class="fas fa-file-alt"></i> Dashboard</a>
                </li>
                <li>
                    <a href="gd_mhs.php"><i class="fas fa-file-alt"></i> Link GDrive</a>
                </li>
                <li>
                    <a href="profil_mhs.php"><i class="fas fa-file-alt"></i> Profil</a>
                </li>
            </ul>
        </nav>
        <div id="body" class="active">
            <!-- navbar navigation component -->
            <nav class="navbar navbar-expand-lg navbar-white bg-white">
                <button type="button" id="sidebarCollapse" class="btn btn-light">
                    <i class="fas fa-bars"></i><span></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="nav navbar-nav ms-auto">
                        <li class="nav-item dropdown">
                            <div class="nav-dropdown">
                                <a href="#" id="nav2" class="nav-item nav-link dropdown-toggle text-secondary" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fas fa-user"></i> <span><?php echo $_SESSION['username']; ?></span> <i style="font-size: .8em;" class="fas fa-caret-down"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end nav-link-menu">
                                    <ul class="nav-list">
                                        <div class="dropdown-divider"></div>
                                        <li>
                                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                                <i class="fas fa-sign-out-alt"></i> Logout
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- end of navbar navigation -->

  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
              <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Yakin Nih Mau Keluar?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Coba Pikir2 Lagi. Kalau Sudah mantap Klik "Logout"</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>

          <form action="code.php" method="POST"> 
            <button type="submit" name="logout_btn" class="btn btn-primary">Logout</button>
          </form>


        </div>
      </div>
    </div>
  </div>