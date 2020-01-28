<?php

require_once 'assets/phpdocx-master/classes/CreateDocx.php';

$docx = new CreateDocx();

ob_start();
$docx = new CreateDocxFromTemplate('assets/phpdocx-master/examples/files/CAT_OPT_SRH_FINAL1.docx');

$html = '<table border=1 style="border-collapse: collapse;width:100%">
			<thead>
                <th>No</th>
                <th>Temuan</th>
                <th>Resiko</th>
                <th>Kriteria</th>
                <th>Akibat / Dampak Penyimpangan</th>
                <th>Sebab Penyimpangan</th>
                <th>Rekomendasi </th>
                <th>Tanggapan Auditee </th>
			</thead>
            <tbody>';
            $i=1;
            foreach ($list_all_cat_operasional as $key) {
         $html .='<tr>
                    <td>'.$i.'</td>
                    <td>'.$key['temuan'].'</td>
                    <td>'.$key['bobot_resiko'].'</td>
                    <td>'.$key['kriteria'].'</td>
                    <td>'.$key['dampak'].'</td>
                    <td>'.$key['nama_penyimpangan'].'</td>
                    <td>'.$key['rekomendasi'].'</td>
                    <td>'.$key['tanggapan_audit'].'</td>
                </tr>';
            $i++;
            }
    $html .='</tbody>
        </table>';

// echo $html;
// print_r($list_all_cat_operasional);
// exit();

$cabang = array('cabang' => $one_header_detail['nama_cabang']);
$options = array('parseLineBreaks' =>true);
$docx->replaceVariableByText($cabang, $options);
$periode = array('periode' =>  date('d-M-Y',strtotime($one_header_detail['periode'])));
$docx->replaceVariableByText($periode, $options);

$docx->replaceVariableByHTML('table', 'block', $html, array('isFile' => false, 'parseDivsAsPs' => true, 'downloadImages' => false));
// print_r($docx);
// $docx->embedHTML('<h1>hallo word<h1>');

// $docx->embedHTML($html);
ob_end_clean();
$docx->createDocx('document');
header("Content-Type: application/msword");
header("Content-Disposition: attachment; filename=document.docx");
header("Content-Length: " . filesize('document.docx'));
header("Content-Transfer-Encoding: binary");
readfile('document.docx');
ob_end_flush();

