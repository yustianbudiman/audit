<?php

require_once '../../../classes/CreateDocx.php';

$docx = new CreateDocx();

// style options
$style = array(
    'color'            => '999999',
    'border'           => 'single',
    'borderLeft'       => 'double',
    'borderColor'      => '990000',
    'borderRightColor' => '000099',
    'borderWidth'      => 12,
    'borderTopWidth'   => 24,
    'indentLeft'       => 920,
);
// create custom style
$docx->createParagraphStyle('myStyle', $style);

// insert a paragraph with that style
$text = 'A paragraph in grey color with borders. All borders are red but the right one that is blue. ';
$text .= 'The general border style is single but the left border that is double. The top border is also thicker. ';
$text .= 'We also include big left indentation.';
$docx->addText($text, array('pStyle' => 'myStyle'));

$docx->createDocx('example_createParagraphStyle_1');