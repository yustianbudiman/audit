<?php

require_once '../../../classes/CreateDocx.php';

$docx = new CreateDocx();

$docx->addText('We write a math equation using OMML (the native Word XML standard for math equations):');

$docx->addMathEquation(
    '<m:oMathPara>
        <m:oMath><m:r><m:t>∪±∞=~×</m:t></m:r></m:oMath>
    </m:oMathPara>', 'omml'
);

$text = array();
$text[] = array('text' => 'The same equation inline: ');
$math = new WordFragment($docx);
$math->addMathEquation(
    '<m:oMathPara>
        <m:oMath><m:r><m:t>∪±∞=~×</m:t></m:r></m:oMath>
    </m:oMathPara>', 'omml'
);
$text[] = $math;

$docx->addText($text);

$docx->createDocx('example_addMathEq_1');