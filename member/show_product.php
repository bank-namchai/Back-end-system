<?php
// $q = $_GET['q'];
include("../condb.php");
$sql = "SELECT * FROM tbl_product as p 
INNER JOIN tbl_type  as t ON p.type_id=t.type_id
ORDER BY p.p_id DESC";  //เรียกข้อมูลมาแสดงทั้งหมด
$result = mysqli_query($con, $sql);
while($row_prd = mysqli_fetch_array($result)){

    $p_qty = $row_prd['p_qty'];

?>

<div class="col-sm-3" align="center">
    <div class="card border-Light mb-1" style="width: 16.5rem;">
        <br>
        <img class="card-img-top">
        <a href=""> <?php echo"<img src='../p_img/".$row_prd['p_img']."'width='200' height='200'>";?></a>
       
        <div class="card-body">
            <a href="prd.php?id=<?php echo $row_prd[0]; ?>"><b> <?php echo $row_prd["p_name"];?></b> </a>
            <br>
            ราคา <font color=""> <?php echo $row_prd["p_price"];?></font> บาท
            <br>
            
            คงเหลือ <?php echo $row_prd["p_qty"];?> <?php echo $row_prd["p_unit"];?>



            <div class="text-center">
            <br><a href=" prd.php?id=<?php echo $row_prd[0];?>">
            <button type="button" class="btn btn-primary" >รายละเอียด</button> </a> 
            </div>

            <?php if($p_qty <= 0){  ?>
           <br>
                    <div class="text-center">
            
            <button type="button"  class="btn btn-danger">สินค้าหมด</button>   
                    </div>
 <?php    }else{  ?>

                <br>
                <div class="text-center">
        <a   href="order.php?id=<?=$row_prd['p_id']?>"   >
        <button type="button" class="btn btn-success" >เพิ่มลงตะกร้าสินค้า</button>    </a> 
                </div>

     <?php          } ?>






          

        
            </div>
        <br>
    </div>
</div>
<?php } ?>