<script type="text/javascript">
    function validasi(form){
       if (form.username.value=="") {
            alert("Username Tidak Boleh Kosong");
            form.username.focus();
            return(false);
        }if (form.password.value=="") {
            alert("Password Tidak Boleh Kosong");
            form.password.focus();
            return(false);
        }if (form.nama.value=="") {
            alert("Nama Tidak Boleh Kosong");
            form.nama.focus();
            return(false);
        }if (form.tipe.value=="") {
            alert("Tipe Tidak Boleh Kosong");
            form.tipe.focus();
            return(false);
        }
        return(true);
    }
</script>

<div class="panel panel-default">
<div class="panel-heading">
        Tambah Data Pengguna
 </div> 
<div class="panel-body">
    <div class="row">
        <div class="col-md-12">
            <form method="POST" onsubmit="return validasi(this)">
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
                    <select class="form-control" name="tipe">
                        <option> == Tipe ==</option>
                        <option value="admin">Admin</option>
                        <option value="user">User</option>
                        
                        </select>
                </div>

                <div>
                    
                    <input type="submit" name="simpan" value="Simpan" class="btn btn-primary">
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
        
        $sql = $koneksi->query("insert into tb_user (username, password, nama, tipe)values(
            '$username', '$password','$nama', '$tipe')");

        if ($sql) {
            ?>
                <script type="text/javascript">
                    
                    alert ("Data Berhasil Disimpan");
                    window.location.href="?page=pengguna";

                </script>
            <?php
        }
    }

 ?>