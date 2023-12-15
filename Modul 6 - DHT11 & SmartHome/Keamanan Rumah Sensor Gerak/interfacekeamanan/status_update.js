$(document).ready(function () {
    // Fungsi untuk memuat nilai status_sensor secara periodik
    function loadStatus() {
        // Ganti URL dengan URL yang sesuai dengan tempat Anda menyimpan file PHP
        $.ajax({
            url: 'http://localhost/pirdasmodul6/mpu6050.php?get_status=true', // Ganti URL dengan endpoint yang sesuai
            type: 'GET',
            success: function (data) {
                // Update nilai pada halaman
                $('#statusValue').text('Status Sensor: ' + data);
            },
            error: function () {
                // Tangani kesalahan jika terjadi
                $('#statusValue').text('Gagal memuat nilai.');
            }
        });
    }

    // Memuat nilai status pertama kali
    loadStatus();

    // Memuat nilai setiap 2 detik
    setInterval(loadStatus, 2000);
});
