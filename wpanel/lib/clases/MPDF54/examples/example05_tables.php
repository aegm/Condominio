<?php



$html = '
<center><h1>CONJUNTO RESIDENCIAL LAS TRINITARIAS</h1></center>
<center><h1>RIF: J-31737501-7</h1></center>
<br/><br/>
<center><h1>AVISO DE COBRO</h1></center>
<center><h1>GASTOS DE CONDOMINIO</h1></center>
<center><h1>MES: JULIO 2012</h1></center>
<br/><br/>
<p>Apartamento: N° IX-PB-B<br/>
PROPIETARIO: XXXXXXXXXXXXXXX<br/>
ALÍCUOTA: 8,8888</p>
<br/><br/>

<table border="1">
    <thead>
        <tr>
            <th aling="center">DESCRIPCIÓN</th>
            <th aling="center">CONJUNTO</th>
            <th aling="center">EDIFICIO XXX</th>
            <th aling="center">EDIFICIO APATO</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td aling="center">DESCRIPCIÓN</td>
            <td aling="center">CONJUNTO</td>
            <td aling="center">EDIFICIO XXX</td>
            <td aling="center">EDIFICIO APATO</td>        
        </tr>
        <tr>
            <td colspan="4">&nbsp;</td>            
        </tr>
        <tr>
            <td colspan="3" align="left">TOTAL A PAGAR APARTAMENTO IX-PB-B</td>
            <td>XXXX</td>
        </tr>
    </tbody>
</table>
<p>&nbsp;</p>

';

//==============================================================
//==============================================================
//==============================================================
include("../mpdf.php");

$mpdf=new mPDF('c','A4','','',32,25,27,25,16,13); 

$mpdf->SetDisplayMode('fullpage');

$mpdf->list_indent_first_level = 0;	// 1 or 0 - whether to indent the first level of a list

// LOAD a stylesheet
$stylesheet = file_get_contents('mpdfstyletables.css');
$mpdf->WriteHTML($stylesheet,1);	// The parameter 1 tells that this is css/style only and no body/html/text

$mpdf->WriteHTML($html,2);

$mpdf->Output('mpdf.pdf','I');
exit;
//==============================================================
//==============================================================
//==============================================================


?>