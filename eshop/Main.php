<?php
  session_start();
  if(isset($_SESSION['sid']))
  {
    $sid=$_SESSION['sid'];
  } else {
    function snum()
    {
     $length = 8;
     $characters = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    $string = "";
     for ($p = 0; $p < $length; $p++)
     {
      $string .= $characters[mt_rand(0, strlen($characters))];
     }
     return $string;
    }
     $_SESSION['sid']=snum();
     $sid = $_SESSION['sid'];
  }
  include("config/config.php");
    $username=base64_decode($_GET['un']);
   // echo $username;
    $count=@mysql_query("SELECT * from product_tbl WHERE username='$username'");
    $pcount=@mysql_num_rows($count);
   if($_GET['un']=="" || $pcount == 0 ){ ?>
   <script>
   alert('No Products Avilable At this time!!');
   </script>
   <?php
    $username=base64_decode($_GET['un']);
       $yourURL="/eshop/".$username."/index.php";
    //echo  $yourURL,"d";


   echo ("<script>window.location='$yourURL'</script>");
   ?>
 <?php
 } else {
  $username=base64_decode($_GET['un']);

  if(!isset($_GET['page']) || $_GET['page'] == ''  || $_GET['page'] <= '0')
  { $page ="1";}
  else
  {
    $page = intval($_GET['page']);
  }
 }
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>BookLovers Online Store</title>
 <link href="css/Webpage.css" rel="stylesheet" type="text/css" />
 <link href="css/flyout.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="js/flyout.js"></script>
 <script type="text/javascript" src="js/main.js"></script>
 <style type="text/css" media="all">
  @import "css/Webpage.css";
 </style>
</head>

<body class="twoColFixLtHdr">
<div id="header">
  <!-- end #header -->
</div>
<div id="container">
<div id="meun"><a href="../eshop/booklovers/index.php">Home</a>

  <a href="../eshop/index.php">Register</a>  
 <a href="../eshop/booklovers/contact.php">Contact</a>
    <a href="../eshop/booklovers/aboutus.php">About us</a>
    <a href="../eshop/booklovers/policy.php">Shopping Policy</a>
     <br></div>
 <div align="center"><img src="../eshop/images/finnal1.gif" alt="Online Book Store" width="950" height="200" /></div>
  <div id="container1"></div>
  <div id="sidebar1">
    <div id="subsidebar1">
      <div id="subsidebar3"> Product Category </div>
<div id="wrapper">
 <?php
   $get_catgry=mysql_query("SELECT DISTINCT(prd_cat) FROM product_tbl WHERE username = '$username' AND prd_status='Available' ")or die(mysql_error());
   $num_cat=mysql_num_rows($get_catgry);
   for($i=0;$i<$num_cat;$i++)
   {
    $category = @mysql_result($get_catgry,$i,'prd_cat');
  ?>
<div id="subsidebar2">
  <dl class="dropdown">
    <dt id="<?php echo $i;?>-ddheader" class="upperdd" onMouseOver="ddMenu('<?php echo $i;?>',1)" onMouseOut="ddMenu('<?php echo $i;?>',-1)"><?php echo $category;?></dt>
    <dd id="<?php echo $i;?>-ddcontent" onMouseOver="cancelHide('<?php echo $i;?>')" onMouseOut="ddMenu('<?php echo $i;?>',-1)">
 <?php
    $get_scatgry=mysql_query("SELECT DISTINCT(prd_sub_cat) FROM product_tbl WHERE prd_cat='$category' AND username = '$username' AND prd_status='Available' ")or die(mysql_error());
    $num_scat=@mysql_num_rows($get_scatgry);
  ?>
      <ul>
        <?php for($j=0;$j<$num_scat;$j++)
              {
               $sub_category=mysql_result($get_scatgry,$j,'prd_sub_cat');
       ?>
        <li><a href="mainproduct.php?cat=<?php echo $category;?>&sub=<?php echo $sub_category?>&un=<?php echo base64_encode($username);?>" class="underline"><?php echo $sub_category;?></a></li>
 <?php
              }
 ?>
      </ul>
    </dd>
   </dl>
</div>
 <?php
  }
 ?>

   </div><!-- end #wrapper class -->
    </div>

    <!-- end #sidebar1 -->





  </div>
         <div id="sidebar1_2">
	  	    <div id="subsidebar1_2">
	      <div id="subsidebar3_2"> Site Navigation </div>

	       <?php
		      $username=base64_decode($_GET['un']);
		         $AboutUsURL="/eshop/".$username."/softrepair.php";
		          $HomeURL="/eshop/".$username."/index.php";
		      //echo  $yourURL,"d";

		   echo (" <div id='subsidebar2'><a href='$HomeURL'>Home</a>  </div>");
		      echo (" <div id='subsidebar2'><a href='$AboutUsURL'>Book Repair</a>  </div>");

   ?>
	     <!-- <div id="subsidebar2"><a href="productmaster.php">Add Product</a>-->

	        </div>
         </div>

  <div id="mainContent">
    <div id="mainContent1">
    <div id="middletxtheadermain">
      <div id="middletxtheader">Welcome</div>
      <div id="middletxt1">
      <div align="left"><h1>Enjoy your shopping</h1>  </div>
      </div>
      </div>
    <?php
    $cartcount=@mysql_query("SELECT * from shop_cart_tbl WHERE username='$username' AND s_id='$sid'");
    $ccount=@mysql_num_rows($cartcount);
    ?>
     <div id="middletxt">
       <div id="middletxtheader">
	<div style="float:left;">Products</div>
       <div style="float:right;">
	<img src="images/cart.gif"><a href="cart.php?un=<?php echo base64_encode($username); ?>">Shopping Cart (<?php  echo $ccount;  ?>)</a></div>
      <div class="clear"></div>
      <!--middletxtheader--> </div>

        <!-- end #middletxt -->
	<form name="frm_main" id="frm_main" method="post" action="">
      <table border="1" cellpadding="0" cellspacing="0" width="685" height="300">
	<!-- MSTableType="layout" -->
<?php
    $adjacents = 3;

	/* Setup vars for query. */
	$targetpage = "Main.php"; 	//your file name  (the name of this file)
	$limit = 4; 								//how many items to show per page
	if($page)
		$start = ($page - 1) * $limit; 			//first item to display on this page
	else
		$start = 0;								//if no page var is given, set start to 0

	$query="SELECT COUNT(*) as num FROM product_tbl WHERE username = '$username' AND prd_status='Available'";
	$total_pages = mysql_fetch_array(mysql_query($query));
	$num = @mysql_num_rows($total_pages);
	$total_pages = $total_pages[$num];
	//echo $total_pages;

	/* Setup page vars for display. */
	if ($page == 0) $page = 1;					//if no page var is given, default to 1.
	$prev = $page - 1;							//previous page is page - 1
	$next = $page + 1;							//next page is page + 1
	$lastpage = ceil($total_pages/$limit);		//lastpage is = total pages / items per page, rounded up.
	$lpm1 = $lastpage - 2;						//last page minus 1

	$get= @mysql_query("SELECT * FROM product_tbl WHERE username='$username' AND prd_status='Available' LIMIT $start, $limit ")or die(mysql_error());
        $num = @mysql_num_rows($get);

    for($i=0;$i<$num;$i++)
    {
     $prid= @mysql_result($get,$i,'prd_id');
     $psname= @mysql_result($get,$i,'prd_sname');
     $plname= @mysql_result($get,$i,'prd_lname');
     $pimg= @mysql_result($get,$i,'prd_photo');
     $psize= @mysql_result($get,$i,'prd_size');
     $puom= @mysql_result($get,$i,'prd_uom');
     $pqty= @mysql_result($get,$i,'prd_qty');
     $pqtyavb= @mysql_result($get,$i,'prd_qtyavb');
     $pcolor= @mysql_result($get,$i,'prd_color');
     $pbrand= @mysql_result($get,$i,'prd_brand');
     $pfeatures= @mysql_result($get,$i,'prd_feature');
     $psdis= @mysql_result($get,$i,'prd_sdis');
     $pldis= @mysql_result($get,$i,'prd_ldis');
     $pstatus= @mysql_result($get,$i,'prd_status');
     $pdel= @mysql_result($get,$i,'prd_delivery_mode');
     $pdlead= @mysql_result($get,$i,'prd_delivery_leadtime');
     $psep= @mysql_result($get,$i,'prd_sep');
 ?>
 <tr>
   <td align="center" width="40"><input type="checkbox" name="chk<?php echo $i; ?>" id="chk<?php echo $i; ?>" value="<?php echo $prid; ?>"></td>
    <td width="110"><p align="Center">Product Name<br/><?php echo $plname;?></td></p>
    <td><p align="center">
    <a onClick="javascript:window.open('image.php?img=<?php echo $pimg; ?>','newWin','width=500,height=280');" >
    <img id="" src="images/products/<?php echo $pimg; ?>" width=50 height=50 /></a>
    </p></td>
    <td width="250"><p align="center">Discription : <br/><?php echo $pldis;?> <br/>
                    <?php if($psize=="") { } else {?>
	            Product Size / Dimension : <?php echo $psize;?> <br/>
	            <?php } ?>
                    <?php if($puom=="null") { } else {?>
	            Unit Of Measure : <?php echo $puom;?> <br/>
	            <?php } ?>
                    <?php if($pcolor=="") { } else {?>
	            Color : <?php echo $pcolor;?> <br/>
	            <?php } ?>
                    <?php if($pbrand=="") { } else {?>
	            Brand : <?php echo $pbrand;?> <br/></p>
	            <?php } ?>
    </td>
    <td width="220"><p align="left">Minimum Quantity To order : <?php echo $pqty?><br/>
        Quantity Avilable : <?php echo $pqtyavb;?> <br/>
        Your Order :<select name="selqty<?php echo $i;?>" id="selqty<?php echo $i;?>" style="width:100px;">
                     <option value="selqty">- Select -</option>
	<?php
	for($k=$pqty;$k<=$pqtyavb;$k++)
	{?>
        <option value="<?php echo $k;?>"><?php echo $k;?></option>
	<?php
	}?>
	</select><br/>
        Delivery Mode : <?php echo $pdel;?> <br/>
        Delivery Lead Time : <?php echo $pdlead;?> Days<br/></p>
    </td>
<?php
    $get_price= @mysql_query("SELECT * FROM prod_price_tbl WHERE username= '$username' AND prd_id='$prid' ")or die(mysql_error());
    $num_price = @mysql_num_rows($get_price);
    for($j=0;$j<$num_price;$j++)
    {
     $pact= @mysql_result($get_price,$j,'price_actual');
     $pdis= @mysql_result($get_price,$j,'price_discount');
     $pdiscount= @mysql_result($get_price,$j,'price_discount_type');
    ?>
    <td width="130"><p align="left">Price : <?php echo $pact;?> <br/>
	<?php
        if($pdiscount=="Yes")
	{ ?>
        Discount : <?php echo $pdis;?> <br/>
	<?php
	}
	?>
    </td>
    <?php } ?>
 </tr>
<?php
}
?>
 <tr>
  <td align="center" colspan="10">
    <input type="submit" name="sub" id="sub" value="Add To Cart" onClick="return chkprdval();"><!--</a>--></td>
 </tr>
</table>
	</form>
<input type="hidden"  name="hdnprdnum" id="hdnprdnum" value="<?php echo $num; ?>">
<script language="javascript">
 function chkprdval()
 {
  var count=0;
  length=document.getElementById("hdnprdnum").value;
  for(j=0;j<length;j++)
  {
   if(document.getElementById("chk"+j).checked)
    {
     count++;
    }
    if(document.getElementById("chk"+j).checked)
    {
    if(document.getElementById('selqty'+j).value=="selqty")
   {
    alert("Please select the quantity");
    return false;
   }
    }
  }
  if(count==0)
  {
   alert("Please select any one product");
   return false;
  }

 }
</script>

 <?php
    $pagination = "";
	if($lastpage > 1)
	{
	        $un=base64_encode($username);
		$pagination .= "<div class=\"pagination\">";
		//previous button
		if ($page > 1)
			$pagination.= "<a href=\"$targetpage?un=$un&page=$prev\">  Previous  </a>";
		else
			$pagination.= "<span class=\"disabled\">  Previous  </span>";
		//pages
		if ($lastpage < 7 + ($adjacents * 2))	//not enough pages to bother breaking it up
		{
			for ($counter = 1; $counter <= $lastpage; $counter++)
			{
				if ($counter == $page)
					$pagination.= "<span class=\"current\">  $counter  </span>";
				else
					$pagination.= "<a href=\"$targetpage?un=$un&page=$counter\">  $counter  </a>";
			}
		}
		elseif($lastpage > 5 + ($adjacents * 2))	//enough pages to hide some
		{
			//close to beginning; only hide later pages
			if($page < 1 + ($adjacents * 2))
			{
				for ($counter = 1; $counter < 4 + ($adjacents * 2); $counter++)
				{
					if ($counter == $page)
						$pagination.= "<span class=\"current\">  $counter  </span>";
					else
						$pagination.= "<a href=\"$targetpage?un=$un&page=$counter\">  $counter  </a>";
				}
				$pagination.= "...";
				$pagination.= "<a href=\"$targetpage?un=$un&page=$lpm1\">  $lpm1  </a>";
				$pagination.= "<a href=\"$targetpage?un=$un&page=$lastpage\">  $lastpage  </a>";
			}
			//in middle; hide some front and some back
			elseif($lastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2))
			{
				$pagination.= "<a href=\"$targetpage?un=$un&page=1\">  1  </a>";
				$pagination.= "<a href=\"$targetpage?un=$un&page=2\">  2  </a>";
				$pagination.= "...";
				for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++)
				{

				  echo "cou=".$counter;
				  echo "page=".$page;
					if ($counter == $page)
						$pagination.= "<span class=\"current\">  $counter  </span>";
					else
						$pagination.= "<a href=\"$targetpage?un=$un&page=$counter\">  $counter  </a>";
				}
				$pagination.= "...";
				$pagination.= "<a href=\"$targetpage?un=$un&page=$lpm1\">  $lpm1  </a>";
				$pagination.= "<a href=\"$targetpage?un=$un&page=$lastpage\">  $lastpage  </a>";
			}
			//close to end; only hide early pages
			else
			{
				$pagination.= "<a href=\"$targetpage?un=$un&page=1\"> 1 </a>";
				$pagination.= "<a href=\"$targetpage?un=$un&page=2\"> 2 </a>";
				$pagination.= "...";
				for ($counter = $lastpage - (2 + ($adjacents * 2)); $counter <= $lastpage; $counter++)
				{
					if ($counter == $page)
						$pagination.= "<span class=\"current\">  $counter  </span>";
					else
						$pagination.= "<a href=\"$targetpage?un=$un&page=$counter\">  $counter  </a>";
				}
			}
		}
		//next button
		if ($page < $counter - 1)
			$pagination.= "<a href=\"$targetpage?un=$un&page=$next\">  Next </a>";
		else
			$pagination.= "<span class=\"disabled\">  Next </span>";
		$pagination.= "</div>\n";
	}
?>
<div id="middletxtheader">
<?php  echo $pagination;  ?>
</div>

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

 <?php
    if(isset($_POST['sub']))
    {
	  for($b=0;$b<$num;$b++)
          {
	    if(isset($_POST['chk'.$b]))
	    {
              $qtyord=$_POST['selqty'.$b];
              $pid=$_POST['chk'.$b];
             if($qtyord=="selqty")
	     {
	      $qtyval="";
	     } else {
	      $qtyval=$qt.$qtyord; // ordered qty
	     }
              $pid=$_POST['chk'.$b];
	      $get= @mysql_query("SELECT * FROM product_tbl WHERE username='$username' AND prd_id='$pid' ")or die(mysql_error());
              $num1 = @mysql_num_rows($get);
              for($i=0;$i<$num1;$i++)
              {
                $psname= @mysql_result($get,$i,'prd_sname');
                $plname= @mysql_result($get,$i,'prd_lname');
                $pimg= @mysql_result($get,$i,'prd_photo');
                $pqty= @mysql_result($get,$i,'prd_qty'); // minimum Qty
                $pqtyavb= @mysql_result($get,$i,'prd_qtyavb'); // avaiable qty
                 $get_price= @mysql_query("SELECT * FROM prod_price_tbl WHERE username= '$username' AND prd_id='$pid' ")or die(mysql_error());
                 $num_price = @mysql_num_rows($get_price);
                 for($j=0;$j<$num_price;$j++)
                 {
                  $pact= @mysql_result($get_price,$j,'price_actual');
                  $pdis= @mysql_result($get_price,$j,'price_discount');
		  $pdiscount= @mysql_result($get_price,$j,'price_discount_type');
                    if($pdiscount=="Yes")
		    {
		     $p_price=$qtyval*$pdis;
		    }
		    else
		    {
 		     $p_price=$qtyval*$pact;
		     $pdis="0.0";
		    }
		 }
	      }
	      $query = mysql_query("INSERT INTO shop_cart_tbl (s_id,username,prd_id,cart_name,cart_img,cart_qty,cart_qtyavb,cart_qtyordered,cart_act,cart_dis,cart_price)
                       VALUES ('$sid','$username','$pid','$plname','$pimg','$pqty','$pqtyavb','$qtyval','$pact','$pdis','$p_price')") or die(mysql_error());
	    }
	  }
	 echo "<script>alert('Products Added to Cart !!');</script>";
         echo "<script>window.location=Main.php?un='$un'</script>";
      	}
  ?>
</body>
</html>