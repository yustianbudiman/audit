<?php

require_once '../../../classes/CreateDocx.php';

$docx = new CreateDocx();

$html = '<h1 style="color: #b70000">An embedHTML() example</h1>';
$html .= '<p>We draw a table with border and rawspans and colspans:</p>';
$html .= '<table border="1" style="border-collapse: collapse" width="600">
            <tbody>
                <tr width="600">
                    <td style="background-color: yellow">1_1</td>
                    <td rowspan="3" colspan="2">1_2</td>
                </tr>
                <tr width="600">
                    <td>Some random text.</td>
                </tr>
                <tr width="600">
                    <td>
                        <ul>
                            <li>One</li>
                            <li>Two <b>and a half</b></li>
                        </ul>
                    </td>
                </tr>
                <tr width="600">
                    <td>3_2</td>
                    <td>3_3</td>
                    <td>3_3</td>
                </tr>
            </tbody>
        </table>';
$docx->embedHTML($html);

$docx->createDocx('example_embedHTML_1');