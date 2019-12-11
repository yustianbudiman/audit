<?php

require_once '../../../classes/CreateDocx.php';

$docx = new CreateDocx();

$docx->addText('Table of Contents', array('bold' => true, 'fontSize' => 14));
$legend = array('text' => 'Click here to update the TOC', 
    'color' => 'B70000', 
    'bold' => true, 
    'fontSize' => 12);
$docx->addTableContents(array('autoUpdate' => true), $legend, '../../files/crazyTOC.docx');

// add some headings so they show up in the TOC
$docx->addText('Chapter 1', array('pStyle' => 'Heading1PHPDOCX'));
$docx->addText('Section', array('pStyle' => 'Heading2PHPDOCX'));
$docx->addText('Another TOC entry', array('pStyle' => 'Heading3PHPDOCX'));

$docx->createDocx('example_addTableContents_1');