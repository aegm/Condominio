<?php
session_start();
/************************************** LIBRERIAS LOCALES *****************************************/
require_once("../config.php");
require_once 'lib/funciones.php';

$sql_habit_condominio="SELECT * 
                       FROM v_habitantes_x_torre
                       WHERE id_condominio=1";



$html = '
<div style="text-align:center">CONJUNTO RESIDENCIAL LAS TRINITARIAS</div>
<div style="text-align:center">RIF: J-31737501-7</div>
<br/>
<div style="text-align:center">AVISO DE COBRO</div>
<div style="text-align:center">GASTOS DE CONDOMINIO</div>
<div style="text-align:center">MES: JULIO 2012</div>
<br/>
<p>Apartamento: N° IX-PB-B<br/>
PROPIETARIO: XXXXXXXXXXXXXXX<br/>
ALÍCUOTA: 8,8888</p>
<br/>

<table colspan="0" colspacing="0" style="border-collapse: collapse;line-height: 1.2; font-size:10px;" width="100%">
    <thead>
        <tr>
            <th style="border:1px solid;" aling="center" width="270px;">DESCRIPCIÓN</th>
            <th style="border:1px solid;" aling="center">CONJUNTO</th>
            <th style="border:1px solid;" aling="center">EDIFICIO XXX</th>
            <th style="border:1px solid;" aling="center">EDIFICIO APTO</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="border:1px solid;" aling="left">DESCRIPCIÓN</td>
            <td style="border:1px solid; text-align:right">CONJUNTO</td>
            <td style="border:1px solid; text-align:right">EDIFICIO XXX</td>
            <td style="border:1px solid; text-align:right">EDIFICIO APTO</td>
        </tr>
        <tr>
            <td colspan="4" style="border:1px solid; ">&nbsp;</td>            
        </tr>
        <tr>
            <td style="border:1px solid;" colspan="3" align="left">TOTAL A PAGAR APARTAMENTO IX-PB-B</td>
            <td style="border:1px solid; text-align:right">XXXX</td>
        </tr>
    </tbody>
</table>
<p>&nbsp;</p>

';

//==============================================================
//==============================================================
//==============================================================
include("lib/clases/MPDF54/mpdf.php");

$mpdf=new mPDF('c','A4','','',32,25,27,25,16,13); 

$mpdf->SetDisplayMode('fullpage');

$mpdf->list_indent_first_level = 0;	// 1 or 0 - whether to indent the first level of a list

// LOAD a stylesheet
/*$stylesheet = file_get_contents('lib/clases/MPDF54/examples/mpdfstyletables.css');
$mpdf->WriteHTML($stylesheet,1);	// The parameter 1 tells that this is css/style only and no body/html/text
*/
$mpdf->WriteHTML($html,2);

$mpdf->Output('mpdf.pdf','I');
exit;
//==============================================================
//==============================================================
//==============================================================


?>