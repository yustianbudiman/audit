<?php

require_once '../../../classes/CreateDocx.php';

$docx = new CreateDocxFromTemplate('../../files/simpleTemplate.docx');

// parse styles of the current template
// notice that besides the original template styles PHPDocX has included additional useful styles
$docx->parseStyles();

$docx->createDocx('example_parseStyles_2');
