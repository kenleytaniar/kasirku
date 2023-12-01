<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once "library/PHPMailer.php";
require_once "library/Exception.php";
require_once "library/OAuth.php";
require_once "library/POP3.php";
require_once "library/SMTP.php";
require_once "produk.php";


    
        
 
	$mail = new PHPMailer(true);
 
	//Enable SMTP debugging. 
	$mail->SMTPDebug = 0;                               
	//Set PHPMailer to use SMTP.
	$mail->isSMTP();            
	//Set SMTP host name                          
	$mail->Host = "tls://smtp.gmail.com"; //host mail server
	//Set this to true if SMTP host requires authentication to send email
	$mail->SMTPAuth = true;                          
	//Provide username and password     
	$mail->Username = "botkuke10@gmail.com";   //nama-email smtp          
	$mail->Password = "owuxyjcgjcfrgnsj";           //password email smtp
	//If SMTP requires TLS encryption then set it
	$mail->SMTPSecure = "tls";                           
	//Set TCP port to connect to 
	$mail->Port = 587;                                   
 
	$mail->From = "zdevil939@gmail.com"; //email pengirim
	$mail->FromName = "Toko suka benar"; //nama pengirim
 
	 $mail->addAddress('obeddanny17@gmail.com', 'obed'); //email penerima
 
	$mail->isHTML(true);
 
	$mail->Subject = 'Produk Anda dengan Nama : ' . $d['nama_produk'] . ' Habis'; //subject
    $mail->Body    = ' Stok Pproduk Anda dengan nama : ' . $d['nama_produk'] . ' yang memiliki kode : ' . $d['kode_produk'] . ' habis'; //isi email
        $mail->AltBody = "PHP mailer"; //body email (optional)
 
	if(!$mail->send()) 
	{
	    echo "Mailer Error: " . $mail->ErrorInfo;
	} 
	else{
// 		<!-- <div class="toast-container position-fixed bottom-0 end-0 p-3">
//   <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
//     <div class="toast-header">
//       <img src="..." class="rounded me-2" alt="...">
//       <strong class="me-auto">Info</strong>
//       <small>Just Now</small>
//       <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
//     </div>
//     <div class="toast-body">
//       Cek Email Anda.
//     </div>
//   </div>
// </div> -->

   } 


