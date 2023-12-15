<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "keamanan";

if (isset($_GET["status_sensor"])) {
    $status_sensor = $_GET["status_sensor"];

    // Koneksi ke database
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Cek koneksi
    if ($conn->connect_error) {
        die("Koneksi ke database gagal: " . $conn->connect_error);
    }

    // Query untuk memasukkan data ke dalam database menggunakan prepared statement
    $sql = "INSERT INTO mpu6050 (status_Sensor) VALUES (?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $status_sensor);

    if ($stmt->execute()) {
        echo "Data berhasil disimpan";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Tutup prepared statement dan koneksi ke database
    $stmt->close();
    $conn->close();
} else if (isset($_GET["get_status"])) { // Tambahkan bagian ini untuk mendapatkan status terkini
    // Koneksi ke database
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Cek koneksi
    if ($conn->connect_error) {
        die("Koneksi ke database gagal: " . $conn->connect_error);
    }

    // Query untuk mendapatkan data terkini
    $sql = "SELECT status_Sensor FROM mpu6050 ORDER BY id DESC LIMIT 1";
    $result = $conn->query($sql);

    // Ambil nilai dari hasil query
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        echo $row["status_Sensor"];
    } else {
        echo "Data tidak ditemukan";
    }

    // Tutup koneksi ke database
    $conn->close();
} else {
    echo "Data tidak lengkap";
}
?>
