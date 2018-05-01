<?php
 include("../config/config.php");
 $username="booklovers";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BookLover Online Store</title>
<link href="../css/Webpage.css" rel="stylesheet" type="text/css" />
<style type="text/css" media="all">
</style>
</head>
<body class="twoColFixLtHdr">
<div id="header">
  <!-- end #header -->
</div>
<div id="container">
<div id="meun"><a href="index.php">Home</a>
  <a href="../index.php">Register</a>  
   <a href="contact.php">Contact</a>
    <a href="aboutus.php">About us</a>
    <a href="policy.php">Shopping Policy</a>
     <br></div>
 <div align="center">  <img src="../images/finnal1.gif" alt="Online Book Store" width="950" height="200" /></div>
  <div id="container1"></div>
  <div id="sidebar1">
    <div id="subsidebar1">
      <div id="subsidebar3">Welcome</div>
                  
      <div id="subsidebar2"><a href="../Main.php?un=<?php echo base64_encode($username);?>">Browse Products</a>
      </div>
      <div id="subsidebar2"><a href="softrepair.php">Book Repair</a>
      </div>
     
     <!--  <div align="center"><a href="../Main.php?un=<?php echo base64_encode($username);?>"><img src="../images/click.jpg" alt="Online Shopping" width="180" height="200" /></a></div>-->
   <div align="center"><img src="images/hometeddy.jpg" alt="Online Shopping" width="180" height="180" /> </div>
    </div>
    <!-- end #sidebar1 -->
  </div>
 <?php
    $get= @mysql_query("SELECT * FROM vendor_tbl WHERE username= '$username'")or die(mysql_error());
    $num = @mysql_num_rows($get);
    for($i=0;$i<$num;$i++)
    {
     $email= @mysql_result($get,$i,'log_email');
     $add= @mysql_result($get,$i,'log_address');
     $country= @mysql_result($get,$i,'log_country');
     $mob= @mysql_result($get,$i,'log_mobile');
     $phone= @mysql_result($get,$i,'log_phone');
     $about= @mysql_result($get,$i,'log_about_us');
    }
 ?>
  <div id="mainContent">
    <div id="mainContent1">
    <div id="middletxtheadermain">
      <div id="middletxtheader" align="right"></div>
      <div id="middletxt1">
       <div id="hello">Shopping Policy </div>
      </div>
      </div>
      <div id="middletxt">
       <div id="middletxtheader" align="right"></div>
        <!-- end #middletxt -->
        <p>This Website is operated by "BookLovers Limites (as known as BookLovers Online Shop).   In accessing the Website and conducting any transactions therein Users are deemed to have accepted the ("Terms of Use").<br></p>

<p>User should not download or use any trademarks, trade names, logos, or images without the BookLovers prior consent and/or authorization.<br></p>

 

<h3>Ordering of Goods</h3>

 
<p>If part of the ordered items is out of stock, the remaining ordered items will be delivered as usual. The User will be refunded within 14 working days for the out-of-stock products/services;<br></p>

 
<p>After the User has confirmed the order, the BookLovers Online Shop will issue a email after verifying the content and confirming the stock.<br></p>

<p>Payment is made in Hong Kong dollars;  The User may make payment by Visa, Master, AE, UnionPay Card, Bank Transfer or Cash on Deliver. <br></p>

 
<h3>Delivery Arrangements</h3><br>

<p>In general, after the User has completed the shopping payment procedures and received the transaction confirmation issued by the BookLovers Online Shop, products that are in stock will be arranged for delivery or pick up through the following channels:<br></p>

 

<p>Within 7 working days after the User has received the transaction confirmation issued by the BookLovers Online Shop via email, directly deliver the items by post to the mailing address User has provided.</p>

       
	<!-- MSTableType="layout" -->
	<tr>


	</tr>
</table>
      </div>
    </div>
    <!-- end #mainContent -->
  </div>
  <!-- This clearing element should immediately follow the #mainContent div in order to force the #container div to contain all child floats -->
  <div id="footer">
    �  (c) 2018 OurSite. Design by BookLovers Limited
    <!-- end #footer -->
  </div>
  <!-- end #container -->
</div>
</body>
</html>