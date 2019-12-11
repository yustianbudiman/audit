<?php

require_once '../../../classes/CreateDocx.php';

$docx = new CreateDocx();

$itemList = array(
    'Line 1',
    'Line 2',
    'Line 3',
    'Line 4',
    'Line 5'
);

$docx->addList($itemList, 2);

$docx->addText('Some content.');

$itemList = array(
    'Line 1',
    'Line 2',
    'Line 3',
    'Line 4',
    'Line 5'
);

// CreateDocx::$numOL returns the numId of the previous list generated with addList
$docx->addList($itemList, 2, array('numId' => CreateDocx::$numOL));

$docx->createDocx('example_addList_6');