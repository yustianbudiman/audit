<?php

require_once '../../../classes/CreateDocx.php';

$docx = new CreateDocx();

$docx->importStyles('../../files/TemplateCharacterStyles.docx', 'merge', array('MyStyle1', 'MyStyle2'), 'styleID');

$text = array();
$text[] =
    array(
        'text' => 'Text MyStyle',
        'rStyle' => 'MyStyle1'
);
$text[] =
    array(
        'text' => ' text MyStyle2.',
        'rStyle' => 'MyStyle2'
);

$docx->addText($text);

$docx->createDocx('example_addText_5');