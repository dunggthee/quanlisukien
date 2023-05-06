<?php
session_start();
//Database Configuration File
include('includes/config.php');


//Import the PHPMailer class into the global namespace
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';

//Passing `true` enables PHPMailer exceptions
$mail = new PHPMailer(true);
$bodyofmail = $_POST['posttitle'];
$body = file_get_contents('add-post.php');

$mail->SMTPDebug = 2;
$mail->isSMTP(); // Sử dụng SMTP để gửi mail
$mail->Host = 'smtp.gmail.com'; // Server SMTP của gmail
$mail->SMTPAuth = true; // Bật xác thực SMTP
$mail->Username = 'tntech.mailtest@gmail.com'; // Tài khoản email
$mail->Password = 'gbejedfwepqdkxpj'; // Mật khẩu ứng dụng ở bước 1 hoặc mật khẩu email
$mail->SMTPSecure = 'ssl'; // Mã hóa SSL
$mail->Port = 465; // Cổng kết nối SMTP là 465
$mail->setFrom('tntech.mailtest@gmail.com', 'TNTech');
$mail->addReplyTo('tntech.mailtest@gmail.com', 'Manager');
// $mail->addAttachment('assets/images/mail.png', ); // Add attachments
$mail->Subject = 'Thong bao tin moi tu TNTECH'; // Tiêu đề
$mail->Body = "▶ $bodyofmail ◀
• Địa chỉ: Tầng 21, TNR Tower, 54A Nguyễn Chí Thanh, Đống Đa, Hà Nội
• Điện thoại: (024) 7303 3556
• Email: sales@tnteco.vn"; 




$result = mysqli_query($con, 'SELECT NvUserName, NvEmailId, SendEmail  FROM tblnv WHERE SendEmail = FALSE');

foreach ($result as $row) {
    try {
        $mail->addAddress($row['NvEmailId'], $row['NvUserName']);
    } catch (Exception $e) {
        echo 'Invalid address skipped: ' . htmlspecialchars($row['NvEmailId']) . '<br>';
        continue;
    }
   

    try {
        $mail->send();
        echo 'Message sent to :' . htmlspecialchars($row['NvUserName']) . ' (' .
            htmlspecialchars($row['NvEmailId']) . ')<br>';
        //Mark it as sent in the DB
    
    } catch (Exception $e) {
        echo 'Mailer Error (' . htmlspecialchars($row['NvEmailId']) . ') ' . $mail->ErrorInfo . '<br>';
        //Reset the connection to abort sending this message
        //The loop will continue trying to send to the rest of the list
        $mail->getSMTPInstance()->reset();
    }
    //Clear all addresses and attachments for the next iteration
    $mail->clearAddresses();
    $mail->clearAttachments();
    
}
?>
<script language="javascript">
document.location="add-post.php";
</script>
