<?php

require_once '../../../classes/CreateDocx.php';

$docx = new CreateDocx();

// create a few Word fragments to insert rich content in a table

$link = new WordFragment($docx);
$options = array(
    'url' => 'http://www.google.es'
);

$link->addLink('Link to Google', $options);

$image = new WordFragment($docx);
$options = array(
    'src' => '../../img/image.png'
);

$image->addImage($options);

$valuesTable = array(
    array(
        'Title A',
        'Title B',
        'Title C'
    ),
    array(
        'Line A',
        $link,
        $image
    )
);


$paramsTable = array(
    'tableStyle' => 'LightListAccent1PHPDOCX',
    'tableAlign' => 'center',
    'columnWidths' => array(1000, 2500, 3000),
    );

$docx->addTable($valuesTable, $paramsTable);

$docx->createDocx('example_addTable_2');