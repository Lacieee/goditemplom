<?php
private function GetGirls($howmanyGirls){
include_once "db.php";
$getGirls = "SELECT * FROM girls LIMIT $howmanyGirls ORDER BY id DESC";
$girls = $db->getArray($getGirls);
return $girls;
}
