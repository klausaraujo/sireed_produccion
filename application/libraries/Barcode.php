<?php

class Barcode{

 public function generate($code,$width,$height){
    
	require_once("barcode/BarcodeGeneratorHTML.php");
	$generator = new BarcodeGeneratorHTML();
	return $generator->getBarcode($code, $generator::TYPE_EAN_8,$width,$height);	
 
 } 

}

?>