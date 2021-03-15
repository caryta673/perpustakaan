<?php
    $nis = $_GET['id'];
    $sql = $koneksi->query("select * from tb_user where id = '$id'");
    $tampil = $sql->fetch_assoc();
    $jkl = $tampil['jk'];
    $kelas = $tampil['kelas'];
?>
<div class="panel panel-default">
<div class="panel-heading">
        Ubah Data
 </div> 
<div class="panel-body">
    <div class="row">
        <div class="col-md-12">
            <form method="POST">
                <div class="form-group">

                <div class="form-group">
                    <label>Username</label>
                    <input class="form-control" name="username" id="username" />   
                </div>

                 <div class="form-group">
                    <label>Password</label>
                    <input class="form-control" name="password" id="password" />   
                </div>

                <div class="form-group">
                    <label>Nama Lengkap</label>
                    <input class="form-control" name="nama" id="nama" />
                    
                </div>

                 <div class="form-group">
                    <label> Tipe</label>
                    <select class="form-control" name="kelas">
                        <option> == Tipe ==</option>
                        <option value="admin">Admin</option>
                        <option value="user">User</option>
                        
                        </select>
                
                <div>
                    
                    <input type="submit" name="simpan" value="Ubah" class="btn btn-primary">
                </div>
         </div>

         </form>
      </div>
</div>  
 </div>  
 </div>


 <?php

    $username = $_POST ['username'];
    $password= $_POST ['password'];
    $nama = $_POST ['nama'];
    $tipe = $_POST ['tipe'];
    
    $simpan = $_POST ['simpan'];

 if ($simpan) {
        
       $sql = $koneksi->query("insert into tb_user (username, password, nama, tipe)values('$username', '$password','$nama', '$tipe')");

          if ($sql) {
            ?>
                <script type="text/javascript">
                    
                    alert ("Data Berhasil Disimpan");
                    window.location.href="?page=anggota";

                </script>
            <?php
        }
    }

 ?>
                             
     