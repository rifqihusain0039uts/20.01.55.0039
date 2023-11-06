<?php

include "koneksi.php";

// Menentukan metode request
$method = $_SERVER['REQUEST_METHOD'];

header('Content-Type: application/json');

switch($method) {
    case 'GET':
        $sql = "SELECT * FROM wisata";
        $stmt = $pdo->query($sql);
        $karyawan = $stmt->fetchAll();
        echo json_encode($karyawan);
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"));
        if(isset(id) && isset(nama_wisata) && isset(alamat_wisata)) {
            $sql = "INSERT INTO wisata (deskripsi_wisata) VALUES (?, ?, ?)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([id, nama_wisata, alamat_wisata, deskripsi_wisata]);
            echo json_encode(['message' => 'wisata berhasil ditambahkan']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'PUT':
        $data = json_decode(file_get_contents("php://input"));
        if(isset(id) && isset(nama_wisata) && isset(alamat_wisata) && isset(deskripsi_wisata)) {
            $sql = "UPDATE wisata SET nama_wisata=?, alamat_wisata=?, deskripsi_wisata=? WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$nama_wisata, $alamat_wisata, $deskripsi_wisata, id]);
            echo json_encode(['message' => 'wisata berhasil diperbarui']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'DELETE':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($id)) {
            $sql = "DELETE FROM wisata WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->id]);
            echo json_encode(['message' => 'wisata berhasil dihapus']);
        } else {
            echo json_encode(['message' => 'ID tidak ditemukan']);
        }
        break;

    default:
        echo json_encode(['message' => 'Metode tidak dikenali']);
        break;
}

?>
