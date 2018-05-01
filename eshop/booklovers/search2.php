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
      <div id="subsidebar3">Search</div>
    
            
     
      <div id="subsidebar2"><a href="../Main.php?un=<?php echo base64_encode($username);?>">Browse Products</a>
      </div>
      <div id="subsidebar2"><a href="softrepair.php">Book Repair</a>
      </div>
     <!--  <div align="center"><a href="../Main.php?un=<?php echo base64_encode($username);?>"><img src="../images/click.jpg" alt="Online Shopping" width="180" height="200" /></a></div>-->
   <div align="center"><img src="images/hometeddy.jpg" alt="Online Shopping" width="180" height="180" /> </div>
    </div>
    <!-- end #sidebar1 -->
  </div>
 
  <div id="mainContent">
    <div id="mainContent1">
    <div id="middletxtheadermain">
      <div id="middletxtheader" align="right"></div>
      <div id="middletxt1">
      <div id="hello">Welcome to BookLovers Online Store </div>
      </div>
      </div>
      <div id="middletxt">
       <div id="middletxtheader" align="right"></div>
        <!-- end #middletxt -->
       
   
 <?php
$output='';
if(isset($_POST['search'])){
	$searchq=$_POST['search'];
		$searchq=preg_replace("#[^0-9a-z]#i","",$searchq);
		$query=mysql_query("SELECT * FROM product_tbl WHERE username='$username' AND prd_lname LIKE '%searchq%' OR prd_feature LIKE '%searchq%'") or die("could not search!");
		$count=mysql_num_rows($query);
		if($count ==0){
			$output = 'There was no search results!';
		}else{
		while($row=mysql_fetch_array($query)){
		$plname=$row['prd_lname'];
		$pfeatures= $row['prd_feature'];
		$prid=$row['prd_id'];
		$output.='<div>'.$plname.''.$pfeatures.'</div>';
		}
		}
}
?>		
                              
		<?php print ("$output");?>						
								
      </div>
    </div>
    <!-- end #mainContent -->
  </div>
  <!-- This clearing element should immediately follow the #mainContent div in order to force the #container div to contain all child floats -->
  <div id="footer">
    (C) 2018 OurSite. Design by BookLovers Limited
    <!-- end #footer -->
  </div>
  <!-- end #container -->
</div>
</body>
</html>