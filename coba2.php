<?php
do {
    $barang = $rowCart['kode_produk'];
  $jumlah = $rowCart['qty'];
  //while ($rowCart = mysqli_fetch_assoc($queryCart)) {
  
  if($jumlah >= 1){
   
    $kurang = mysqli_query($conn, "SELECT Stok_barang FROM produk WHERE kode_produk='$barang'");
    $row = mysqli_fetch_assoc($kurang);
   
    $stokbaru = $row['Stok_barang'] - $jumlah;
    
    $query_update = mysqli_query($conn, "UPDATE produk SET Stok_barang = '$stokbaru' WHERE kode_produk = '$barang'");
    }
    if ($query_update) {
      echo 'Stok barang berhasil diperbarui di database';
    } else {
      echo 'Error: ' . mysqli_error($conn);
    }
    
} while ($rowCart = mysqli_fetch_assoc($queryCart)); ?>