<?php  
include '../connection.php';
include 'function.php';
include 'data/reportaction.php';

$isSame = false;
$output = [];


if (isset($_GET['btn_action'])) {
	if ($_GET['btn_action'] == 'load_nis_by_semester') {
		echo listNisBySemester($connect,$_GET['tahun']);
	}

	if ($_GET['btn_action'] == 'fill_blank_input') {
		$motorik = getNilaiMotorik($connect,$_GET['nis'],$_GET['tahun'],'motorik');
		$sosialisasi = getNilaiMotorik($connect,$_GET['nis'],$_GET['tahun'],'sosial');
		$keaktifan = getNilaiMotorik($connect,$_GET['nis'],$_GET['tahun'],'aktif');
		$daya_ingat = getNilaiMotorik($connect,$_GET['nis'],$_GET['tahun'],'daya_ingat');
		echo json_encode(['motorik' => $motorik,'sosialisasi' => $sosialisasi,'keaktifan' => $keaktifan, 'daya_ingat' => $daya_ingat ]);
	}
}

if (isset($_POST['btn_action'])) {
	/**
	 * ==========================================
	 * Save data
	 * ==========================================
	 */
	if ($_POST['btn_action'] == 'Add') {
		$query_select = "SELECT * FROM tb_perkembangan WHERE nip=:nip AND nis=:nis AND tgl=:tgl";
		$sc = $connect->prepare($query_select);
		$sc->execute(array(
			':nip'		=> $_SESSION['nip'],
			':nis'		=> $_POST['nis'],
			':tgl'		=> $_POST['tgl']
		));
		$count = $sc->rowCount();
		if ($count > 0) {
			echo "Ups terjadi kesalahan!! Penilaian hanya boleh sekali dalam seminggu!";
		}else {
			$query = "
				INSERT INTO tb_perkembangan (nip,nis,aktif,sosial,motorik,daya_ingat,tgl) 
				VALUES (:nip,:nis,:aktif,:sosial,:motorik,:daya_ingat,:tgl)
			";
			// $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$statement = $connect->prepare($query);
			$statement->execute(
				array(
					':nip' 			=> $_SESSION['nip'],
					':nis' 			=> $_POST['nis'],
					':aktif' 		=> $_POST['aktif'],
					':sosial' 		=> $_POST['sosial'],
					':motorik' 		=> $_POST['motorik'],
					':daya_ingat' 	=> $_POST['daya_ingat'],
					':tgl'			=> $_POST['tgl'],
				)
			);
			$result = $statement->fetchAll();
			if (isset($result)) {
				echo 'Nilai Perkembangan berhasil ditambahkan!!';
			}
		}
	}
	/**
	 * ====================================
	 * Display single data
	 * ====================================
	 */
	if ($_POST['btn_action'] == 'fetch_single') {
		$query = " SELECT tb_perkembangan.*, tb_siswa.nama, tb_siswa.jenis_kelamin, DATE_FORMAT(tb_siswa.tgl_lahir,'%d %M %Y') as tanggal_lahir ,
			(SELECT tb_kelas.kelas FROM tb_kelas WHERE tb_kelas.id=tb_detail_siswa.id_kelas) as kelas,
			(SELECT tb_tahun_ajaran.tahun FROM tb_tahun_ajaran WHERE tb_tahun_ajaran.id = tb_detail_siswa.id_tahun_ajaran) as tahun_ajaran,
			(SELECT tb_tahun_ajaran.semester FROM tb_tahun_ajaran WHERE tb_tahun_ajaran.id = tb_detail_siswa.id_tahun_ajaran) as semester
			from tb_perkembangan 
		    LEFT JOIN tb_siswa on tb_siswa.nis = tb_perkembangan.nis
			LEFT JOIN tb_pendaftaran on tb_pendaftaran.id_siswa = tb_siswa.id
			LEFT JOIN tb_detail_siswa ON tb_siswa.id = tb_detail_siswa.id_siswa
			WHERE tb_siswa.nis IS NOT NULL AND tb_perkembangan.id = :id ";
		$statement = $connect->prepare($query);
		$statement->execute([
			':id' => $_POST['id']
		]);
		$result = $statement->fetchAll();
		// $password = password_hash($_POST['password'],PASSWORD_DEFAULT);
		foreach ($result as $row) {
			$output['id'] = $row['id'];
			$output['nip'] = $row['nip'];
			$output['nis'] = $row['nis'];
			$output['nama'] = $row['nama'];
			$output['motorik'] = $row['motorik'];
			$output['sosial'] = $row['sosial'];
			$output['daya_ingat'] = $row['daya_ingat'];
			$output['aktif'] = $row['aktif'];
			$output['tgl'] = $row['tgl'];
		}
		echo json_encode($output);
	}

	/**
	 * =================================================
	 * Update data
	 * ==================================================
	 * */
	if ($_POST['btn_action'] == 'Edit') {
		$query = "
			UPDATE tb_perkembangan
			set nis = :nis,
			motorik = :motorik,
			sosial = :sosial,
			aktif = :aktif,
			daya_ingat = :daya_ingat,
			tgl = :tgl
			WHERE id = :id
		";
		$statement = $connect->prepare($query);
		$statement->execute(
			array(
				':nis' 			=> $_POST['nis'],
				':motorik' 		=> $_POST['motorik'],
				':sosial' 		=> $_POST['sosial'],
				':aktif' 		=> $_POST['aktif'],
				':daya_ingat' 	=> $_POST['daya_ingat'],
				':tgl' 			=> $_POST['tgl'],
				':id'			=> $_POST['id_perkembangan']
			)
		);
		$result = $statement->fetch();
		if (isset($result)) {
			echo "Perkembangan siswa telah diapdate!";
		}
	}

	/**
	 * ================================
	 * Change tb_perkembangan status
	 * ===============================
	 */
	if ($_POST['btn_action'] == 'delete') {
		$query ="
			DELETE FROM tb_perkembangan 
			WHERE id = :id
		";
		$statement = $connect->prepare($query);
		$statement->execute(
			array(
				':id' 	=> $_POST['id']
			)
		);
		$count = $statement->fetchAll();
		if (isset($count)) {
			echo 'Data perkembangan telah dihapus ';
		}
	}

}

?>