<?php
 include("../config/config.php");
 $username="booklovers";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BookLovers Online Store</title>
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
       <div id="hello">Contact</div>
      </div>
      </div>
      <div id="middletxt">
       <div id="middletxtheader" align="right"></div>
        <!-- end #middletxt -->
<table border="0" cellpadding="0" cellspacing="0" width="685" height="400">
	<!-- MSTableType="layout" -->
	<tr>
		<td align="left" ><img src="../images/aboutus.jpg" alt="About us" width="200" height="200" /></td>
                <td ><p align="center"><strong><?php echo $about;?></strong></p></td>
	</tr>
	<tr>
          <td ><table>
          <tr> <td>   <p align="left"><strong>Address:</strong> </p></td>   <td>  <?php echo $add; ?> </td>   </tr>
 <tr> <td> <p align="left"><strong>Country:</strong> </p> </td>   <td>  <?php echo $country;?></td>   </tr>
  <tr> <td> <p align="left"><strong>E-mail:</strong> </p> </td>   <td> <?php echo $email;?> </td>   </tr>
   <tr> <td> <p align="left"><strong>Mobile No:</strong> </p> </td>   <td><?php echo $mob;?>  </td>   </tr>
    <tr> <td><p align="left"><strong>Phone No:</strong> </p>  </td>   <td><?php echo $phone;?>  </td>   </tr>


          </table>

                </td>
		<td align="right"><img src="../images/contactus.jpg" alt="Contact us" width="200" height="200" /></td>
	</tr>
</table>
      </div>
    </div>
    <!-- end #mainContent -->
  </div>
  <!-- This clearing element should immediately follow the #mainContent div in order to force the #container div to contain all child floats -->
  <div id="footer">
    � (c) 2018 OurSite. Design by BookLovers Limited
    <!-- end #footer -->
  </div>
  <!-- end #container -->
</div>
</body>
</html>