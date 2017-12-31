<?php require 'partials/head.php'; ?>
<div class="row">
  <div class="col-md-12">
    <div class="row">
      <div class="col-md-4">
        <select name="nama-siswa" id="nama-siswa" class="form-control">
          <?php echo getListSiswaByOrtu($connect,$_SESSION['id']) ?>
        </select>
      </div>
      <div class="col-md-3">
        <select name="tahun_ajaran" id="tahun_ajaran" class="form-control" required>
          <?php
            echo getAllTahunAjaran($connect) 
          ?> 
        </select>
      </div>
      <div class="col-md-2 ">
        <button type="button" name="tampilkan_siswa" id="tampilkan_siswa" class="btn form-control btn-info btn-xs">Tampilkan</button><br><br>
      </div>
    </div>
  </div>
</div>

<div class="contentHasilBelajar">
  <div class="row">
    <div class="col-md-12">
      <h2 class="text-center">TK SINAR PRIMA</h2>
    </div>
    <div class="col-sm-12 col-md-12">
      <div class="box box-solid">
        <div class="box-body">
          <table class="table table-striped table-bordered">
            <thead>
              <tr>
                <th width="70%" rowspan="2" style="text-align: center;top: 0">Kompetensi Dasar</th>
                <th width="30%" colspan="4" style="text-align: center;">Hasil Belajar</th>
              </tr>
              <tr>
                <th>A</th>
                <th>B</th>
                <th>C</th>
                <th>D</th>
              </tr>
              <tr></tr>
            </thead>
            <tbody>
              <tr>
                <td>Nama</td>
                <td></td>
                <td><input type="checkbox" name="nilai" checked=""></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>Nama</td>
                <td>Ayu</td>
              </tr>
              <tr>
                <td>Nama</td>
                <td>Ayu</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>


<span id="alert_action"></span>
<div class="row">
  <div class="col-lg-12 col-xs-12">
    <!-- small box -->
    <!-- <div class="box">
      <div class="box-header  with-border">
        <h3 class="box-title"><i class="fa fa-user"></i> Hasil Belajar Siswa</h3>
      </div>
      <div class="box-body">
        <div class="row">
          <div class="col-sm-12">
            <div class="table-responsive">
              <table id="siswatable" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No</th>
                  <th>NIS</th>
                  <th>Nama</th>
                  <th>Kelas</th>
                  <th>Tahun Ajaran</th>
                  <th>Semester</th>
                  <th>Pembiasaan</th>
                  <th>Bahasa</th>
                  <th>Daya Fikir</th>
                  <th>Motorik</th>
                  <th>Total Nilai</th>
                  <th>Keterangan</th>
                </tr>
                </thead>
              </table>
            </div>
          </div>
          
        </div>
      </div>
    </div> -->
  </div>
</div>

<div id="siswaBaruModal" class="modal fade">
  <div class="modal-dialog">
    <form method="post" id="siswaForm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><i class="fa fa-plus"></i> Add Brand</h4>
        </div>
        <div class="modal-body">
          <div id="textDiscount" class="text-success text-center"></div>
          <div class="row">
            <div class="col-md-7">
              <div class="form-group">
                <label>Tahun Ajaran</label>
                <select name="tahun_ajaran" id="tahun_ajaran" class="form-control" required>
                  <option value="">Pilih tahun ajaran anak anda mendaftar</option>
                  <?php
                    $tahun = date('Y'); 
                    echo listTahunAjatan($connect,$tahun) 
                  ?> 
                </select>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label>Nama</label>                
                <input type="text" name="nama" id="nama" class="form-control" required />
              </div>
            </div>
          </div>
          <div class="form-group">
            <label>Alamat</label>
            <textarea class="form-control" id="alamat" name="alamat" required></textarea>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Jenis Kelamin :</label>
                <div class="row">
                  <div class="col-md-6">
                    <div class="radio">
                      <label><input type="radio" id="1" name="jenis_kelamin" value="1" required> Laki-laki</label>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="radio">
                      <label><input type="radio" id="2" name="jenis_kelamin" value="2"> Perempuan</label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="row">
                <div class="col-sm-12">
                  <div class="form-group">
                    <label>Tanggal Lahir :</label>
                    <input class="form-control getDatePicker" name="tgl_lahir" id="tgl_lahir" required/>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Metode Pembayaran</label>
                <div class="row">
                  <div class="col-md-6">
                    <div class="radio">
                      <label><input type="radio" id="tunai" name="metodePembayaran" value="tunai" required> Setor Tunai</label>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="radio">
                      <label><input type="radio" id="transfer" name="metodePembayaran" value="transfer"> Transfer</label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Biaya Pendaftaran</label>
                <input class="form-control" id="biayaPendaftaran" name="biayaPendaftaran" readonly required value="100000">
              </div>
            </div>
          </div>

        </div>
        <div class="modal-footer">
          <input type="hidden" name="id_siswa" id="id_siswa" />
          <input type="hidden" name="btn_action" id="btn_action" />
          <input type="hidden" name="diskon" id="diskon">
          <input type="hidden" name="jumlahAnak" id="jumlahAnak">
          <input type="hidden" name="tgl_daftar" id="tgl_daftar" value="<?php echo date('Y-m-d') ?>">
          <input type="submit" name="action" id="action" class="btn btn-info" value="Add" />
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </form>
  </div>
</div>

<div id="userDetailModal" class="modal fade">
  <div class="modal-dialog">
      <form method="post" id="product_form">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title"><i class="fa fa-plus"></i> Details data user</h4>
              </div>
              <div class="modal-body">
                  <Div id="userDetails"></Div>
              </div>
              <div class="modal-footer">
                  
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
          </div>
      </form>
  </div>
</div>



<?php require 'partials/footer.php'; ?>
<script type="text/javascript">
  // ================== User datatable =============
      fetchData('no');

      function fetchData(isSearch,nis='',tahun_ajaran='') {
        var id_ortu = <?php echo $_SESSION['id']; ?>;
        var userTable = $('#siswatable').DataTable({
          "processing":true,
          "serverSide":true,
          "order":[],
          "ajax":{
            url: "../controller/getData.php",
            data: {isSearch:isSearch,hasilBelajar: "siswa-baru",id_ortu:id_ortu,nis:nis,tahun_ajaran:tahun_ajaran},
            type: "GET"
          },
          "columnDefs":[
            {"width":"20px","targets":0},
            {"width":"15%","targets":[2,5,7]},
            {
              "targets":[0,8,9],
              "orderable":false,
            },
          ],
          "pageLength": 10
        });
      }

      $('#tampilkan_siswa').click(function(){
        var nis = $('#nama-siswa').val();
        var tahun_ajaran = $('#tahun_ajaran').val();
        if (nis != '' && tahun_ajaran != '') {
          $('#siswatable').DataTable().destroy();
          fetchData('yes',nis,tahun_ajaran);
        }
      })

      // add button clicked
      $('#add_button').click(function(){
        $('#siswaBaruModal').modal('show');
        $('#siswaForm')[0].reset();
        $('.modal-title').html("<i class='fa fa-plus'></i> Tambah Siswa");
        $('#action').val('Add');
        $('#btn_action').val('Add');
        var idOrtu = <?php echo $_SESSION['id']; ?>;
        var jumlahAnak = $.ajax({
            url: '../controller/helper.php',
            data: {id_ortu:idOrtu},
            method: 'POST',
            success: function(data){
              $('#jumlahAnak').val(data)
            }
          });
      });
      // konfirmasi pembayaran button clicked
      $('#konfirmasi_pendaftaran_btn').click(function(){
        $('#konfirmasiSiswaModal').modal('show');
        $('.modal-title').html("<i class='fa fa-plus'></i> Tambah Siswa");
        $('#action_konfirm').val('Konfirm');
        $('#btn_action_konfirm').val('Konfirm');
      });

    $('#tahun_ajaran').change(function(){
      var idTahunAjaran = $('#tahun_ajaran').val();
      var diskonNumber,diskonValue,total,textDiskon;
      var biayaDaftar = $('#biayaPendaftaran').val();
      $.ajax({
        method: 'POST',
        data: {idTahunAjaran:idTahunAjaran},
        url: '../controller/helper.php',
        success: function(data){
          biayaDaftar = 100000;
          textDiskon = $('#diskon').val(data);
          if ($('#jumlahAnak').val() > 0) {
            diskonNumber = $('#diskon').val();
            diskonValue = (diskonNumber/100) * biayaDaftar;
            total = biayaDaftar - diskonValue;
            $('#biayaPendaftaran').val(total)
          }
        }
      });
    });
    // check if username is same
    $('#username').on('input', function(e){
      e.preventDefault();
      var username = $('#username').val();
      $.ajax({
        url: "../controller/checkusername.php",
        method:"POST",
        data: {username:username},
        success: function(data){
          $('#usernameError').html(data)
        }
      });
    });

    // Check if email same
    $('#email').on('input', function(e){
      e.preventDefault();
      var email = $('#email').val();
      $.ajax({
        url: "../controller/helper.php",
        method:"POST",
        data: {email:email},
        success: function(data){
          $('#emailError').html(data)
        }
      });
    });
    // Check if phone is same
    $('#tlpn').on('input', function(e){
      e.preventDefault();
      var tlpn = $('#tlpn').val();
      $.ajax({
        url: "../controller/checkTlpn.php",
        method: "POST",
        data: {tlpn:tlpn},
        success: function(data){
          $('#tlpnError').html(data)
        }
      })
    });
    // ============= save data
    $(document).on('submit','#siswaForm', function(e){
      e.preventDefault();
      $('#action').attr('disabled','disabled');
      var formData = $(this).serialize();
      $.ajax({
        url: "../controller/siswaaction.php",
        method: "POST",
        data: formData,
        success: function(data){
          $('#siswaForm')[0].reset();
          $('#siswaBaruModal').modal('hide');
          $('#alert_action').fadeIn().html('<div class="alert alert-success alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'+data+'</div>');
          $('#action').attr('disabled', false);
          userTable.ajax.reload();
          window.location.reload(true);
        }
      })
    });
    // Upload Bukti pembayaran
    $(document).on('submit','#formKonfirmasiPendaftaran', function(e){
      e.preventDefault();
      $('#action_konfirm').attr('disabled','disabled');
      $.ajax({
        url: "../controller/siswaaction.php",
        method: "POST",
        data: new FormData(this),
        contentType: false,
        processData: false,
        success: function(data){
          $('#konfirmasiSiswaModal').modal('hide');
          $('#alert_action').fadeIn().html('<div class="alert alert-success alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'+data+'</div>');
          $('#action_konfirm').attr('disabled', false);
          userTable.ajax.reload();
          window.location.reload(true);
        }
      })
    });

    // Konfirmasi Siswa
    $(document).on('click','.konfirmasi-siswa',function(){
      var id = $(this).attr("id");
      var btn_action = 'konfirmasi_siswa';
      $.ajax({
        url: '../controller/siswaaction.php',
        method: 'POST',
        data: {id:id, btn_action:btn_action},
        dataType: 'json',
        success: function(data){
          $('#siswaBaruModal').modal('show');
          $('#nama').val(data.nama);
          $('#tgl_lahir').val(data.tgl_lahir);
          $('#alamat').val(data.alamat);
          $('#email').val(data.email);
          $('input[name="jenis_kelamin"][value="'+data.jenis_kelamin+'"]').prop('checked',true);
          $('#'+data.status+'').prop('checked',true);
          $('#tlpn').val(data.tlpn);
          $('.modal-title').html("<i class='fa fa-pencil-square-o'></i> Edit User");
          $('#action').val("Edit");
          $('#user_id').val(id)
          $('#btn_action').val("Edit");
        }
      })
    });

    // ============= Display single data and update
    $(document).on('click','.update-siswa',function(){
      var id = $(this).attr("id");
      var btn_action = 'fetch_single';
      $.ajax({
        url: '../controller/siswaaction.php',
        method: 'POST',
        data: {id:id, btn_action:btn_action},
        dataType: 'json',
        success: function(data){
          $('#siswaBaruModal').modal('show');
          $('#nama').val(data.nama);
          $('#tgl_lahir').val(data.tgl_lahir);
          $('#alamat').val(data.alamat);
          $('#tahun_ajaran').val(data.id_tahun_ajaran);
          $('#jumlah_bayar').val(data.jumlah_bayar);
          $('input[name="jenis_kelamin"][value="'+data.jenis_kelamin+'"]').prop('checked',true);
          $('input[name="metodePembayaran"][value="'+data.cara_bayar+'"]').prop('checked',true);
          $('.modal-title').html("<i class='fa fa-pencil-square-o'></i> Edit Siswa");
          $('#action').val("Edit");
          $('#id_siswa').val(id)
          $('#btn_action').val("Edit");
        }
      })
    });

    // ================== delete data
    $(document).on('click','.delete-user',function(){
      var id_siswa = $(this).attr("id");
      var status = $(this).data("status");
      var btn_action = 'delete';
      if (confirm("Anda yakin akan akan menonaktifkan user ini?")) {
        $.ajax({
          url: '../controller/siswaaction.php',
          method: 'POST',
          data: {id_siswa: id_siswa, status:status, btn_action:btn_action},
          success: function(data) {
            $('#alert_action').fadeIn().html('<div class="alert alert-info alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'+data+'</div>')
            userTable.ajax.reload();
          }
        })
      }else {
        return false;
      }
    })

    // View data ========================
    $(document).on('click','.view-user',function(){
      var id_siswa = $(this).attr("id");
      var btn_action = 'user_details';
      $.ajax({
        url: '../controller/helper.php',
        method: 'POST',
        data: {id_siswa:id_siswa,btn_action:btn_action},
        success: function(data) {
          $('#userDetailModal').modal('show');
          $('#userDetails').html(data)
        }
      });
    });
</script>