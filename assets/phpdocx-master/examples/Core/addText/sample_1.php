<?php

require_once '../../../classes/CreateDocx.php';

$docx = new CreateDocx();
// print_r($docx);
ob_start();
$docx->embedHTML('<h1>hallo word<h1>');
// $docx->embedHTML($html);
ob_end_clean();
$docx->createDocx('document');
header("Content-Type: application/msword");
header("Content-Disposition: attachment; filename=document.docx");
header("Content-Length: " . filesize('document.docx'));
header("Content-Transfer-Encoding: binary");
readfile('document.docx');
ob_end_flush();