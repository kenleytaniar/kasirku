<?php include 'sidebar.php'; ?>
<?php $dataselect = mysqli_query($conn, "SELECT * FROM produk");
$jsArray = "var nama_produk = new Array();";
$jsArray1 = "var harga_jual = new Array();";
$jsArray2 = "var harga_modal = new Array();"; 
$ppp = 2;
$kurang = mysqli_query($conn, "SELECT Stok_barang FROM produk WHERE kode_produk='BRG001'");
$row = mysqli_fetch_assoc($kurang);
echo $row['Stok_barang'];


 ?>
<form method = "post">
<div class="col-4 col-sm-4 col-md-4 col-lg-1 mb-3">
    <label class="small text-muted mb-1">Qty</label>
    <input type="number" name="jumlah" id="jumjum" onchange="InputSub()" placeholder="0" class="form-control form-control-sm" required>
    <button type="submit" name="InputCart" class="btn btn-primary btn-sm">Simpan</button>
  </div>
</form>

<?php
if(isset($_POST['InputCart'])){
$jumlah = htmlspecialchars($_POST['jumlah']);
if($jumlah > 1){
    $kurang = mysqli_query($conn, "SELECT Stok_barang FROM produk WHERE kode_produk='BRG001'");
    $row = mysqli_fetch_assoc($kurang);
  $stokbaru = $row['Stok_barang'] - $jumlah;
  $query_update = mysqli_query($conn, "UPDATE produk SET Stok_barang = '$stokbaru' WHERE kode_produk = 'BRG001'");
  echo $jumlah;
  if ($query_update) {
      echo 'berhasil';
  } else {
      echo 'Error: ' . mysqli_error($conn);
  }
  }};
?>

<span class="float-right">
<a href="index.php" class="btn btn-danger btn-sm px-3 mr-1">Kembali</a>
<button type="button" class="btn btn-primary btn-sm px-3"  onclick="document.title='Invoice#<?php echo $noinv ?>';window.print()">
Cetak</button>
</span>