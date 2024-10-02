<?php
session_start();
include("../condb.php");
 
$cusName = $_POST['m_name'];
$cusAddress =  $_POST['m_address'];
$cusTel = $_POST['m_tel'];

$sql = "insert into tb_order(cus_name,address,telephone,total_price,order_status)
values('$cusName','$cusAddress ','$cusTel','" . $_SESSION["sum_price"] . "','1')";
mysqli_query($con,$sql);

$orderID = mysqli_insert_id($con);
$_SESSION["order_id"] = $orderID;


for ($i=0; $i <= ( int)$_SESSION["intLine"]; $i++ ) {
    if(  ($_SESSION["strProductID"][$i]) != ""   ){
        //ดึงข้อมูลสินค้า
        $sql1 = " select * from tbl_product where p_id = '" . $_SESSION["strProductID"][$i] ."' ";
        $result1=mysqli_query($con,$sql1);
        $row1=mysqli_fetch_array($result1);
        $price =    $row1['p_price'];
        $total = $_SESSION["strQty"][$i] * $price;

        $sql2 = "insert into order_detail(orderID,pro_id,orderPrice,orderQty,Total) 
        values('$orderID','" . $_SESSION["strProductID"][$i] ."','$price',
        '" .  $_SESSION["strQty"][$i] ."','$total ' )";

             
        
        if( mysqli_query($con,$sql2)) {


                $sql3 = "update tbl_product set p_qty= p_qty - '" . $_SESSION["strQty"][$i] ."'  
                        where p_id ='" . $_SESSION["strProductID"][$i] ."' ";
                        mysqli_query($con,$sql3);
                            
                        echo "<script>  alert('ยืนยันการสั่งซื้อสำเร็จ') </script> ";
                        echo "<script> window.location='print_order.php'; </script> ";




             }
            




    }





}








mysqli_close($con);
unset($_SESSION["intLine"]);
unset($_SESSION["strProductID"]);
unset($_SESSION["strQty"]);
unset($_SESSION["sum_price"]);
// session_destroy();
 


?>