<?php

require_once '../../../classes/CreateDocx.php';

$docx = new CreateDocx();

$options = array(
    'src' => 'https://www.phpdocx.com/img/logo_badge.png',
    'imageAlign' => 'center',
    'streamMode' => true,
);

$docx->addImage($options);

$docx->createDocx('example_addImage_4');