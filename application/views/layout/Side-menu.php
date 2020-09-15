<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
     
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="<?php echo base_url('Home'); ?>">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
           
          </a>
          <!-- <ul class="treeview-menu">
            <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
            <li><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
          </ul> -->
        </li>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i>
            <span>Master</span>
             <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url('master/user'); ?>"><i class="fa fa-circle-o"></i> User</a></li>
            <li><a href="<?php echo base_url('master/karyawan'); ?>"><i class="fa fa-circle-o"></i> Karyawan</a></li>
            <li><a href="<?php echo base_url('master/jabatan'); ?>"><i class="fa fa-circle-o"></i> Jabatan</a></li>
            <li><a href="<?php echo base_url('master/layanan'); ?>"><i class="fa fa-circle-o"></i> Layanan</a></li>
            <li><a href="<?php echo base_url('master/pelanggan'); ?>"><i class="fa fa-circle-o"></i> Pelanggan</a></li>
            <li><a href="<?php echo base_url('master/status'); ?>"><i class="fa fa-circle-o"></i> Status</a></li>
          </ul>
        </li>
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>Transaksi</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url('transaksi/order'); ?>"><i class="fa fa-circle-o"></i> Order</a></li>
            <li><a href="<?php echo base_url('transaksi/setoran'); ?>"><i class="fa fa-circle-o"></i> Setoran</a></li>
          </ul>
        </li>
        
        <li><a href="<?php echo base_url('laporan'); ?>"><i class="fa fa-book"></i> <span>Laporan</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>