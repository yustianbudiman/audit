<?php

require_once '../../../classes/CreateDocx.php';

$docx = new CreateDocx();

$docx->addText('We will now add a 3D horizontal bar chart to the Word document:');

$data = array(
    'legend' => array('Legend 1', 'Legend 2', 'Legend 3'),
    'data' => array(
        array(
            'name' => 'data 1',
            'values' => array(10, 20, 5),
        ),
        array(
            'name' => 'data 2',
            'values' => array(20, 60, 3),
        ),
        array(
            'name' => 'data 3',
            'values' => array(50, 33, 7),
        ),
    ),
);
$paramsChart = array(
    'data' => $data,
    'type' => 'bar3DChart',
    'color' => '2',
    'perspective' => '20',
    'rotX' => '20',
    'rotY' => '20',
    'sizeX' => '15',
    'sizeY' => '10',
    'chartAlign' => 'center',
    'legendOverlay' => '0',
    'border' => '1',
    'hgrid' => '1',
    'vgrid' => '2'
);
$docx->addChart($paramsChart);

$docx->addText('And now the same chart in 2D with a different color scheme and with the table data:');

$data = array(
    'legend' => array('Legend 1', 'Legend 2', 'Legend 3'),
    'data' => array(
        array(
            'name' => 'data 1',
            'values' => array(10, 20, 5),
        ),
        array(
            'name' => 'data 2',
            'values' => array(20, 60, 3),
        ),
        array(
            'name' => 'data 3',
            'values' => array(50, 33, 7),
        ),
    ),
);
$paramsChart = array(
    'data' => $data,
    'type' => 'barChart',
    'color' => 5,
    'sizeX' => 15,
    'sizeY' => 10,
    'chartAlign' => 'center',
    'legendPos' => 'none',
    'legendOverlay' => '0',
    'border' => '1',
    'hgrid' => '1',
    'vgrid' => '0',
    'showTable' => '1'
);
$docx->addChart($paramsChart);

$docx->createDocx('example_addChart_2');