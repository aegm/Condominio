<?php
/*
UploadiFive
Copyright (c) 2012 Reactive Apps, Ronnie Garcia
*/
//validando el directorio
$directorio = "D:\Zend\Apache2\htdocs\adonai\images/".$_POST['dir']."/".$_POST['sub_dir']."/";
if(!is_dir($directorio)){
    mkdir($directorio,0777); 
    echo $directorio;
    
}
// Set the uplaod directory
$uploadDir = "\adonai\images/".$_POST['dir']."/".$_POST['sub_dir']."/"; 
// Set the allowed file extensions
$fileTypes = array('jpg', 'jpeg', 'gif', 'png'); // Allowed file extensions

$verifyToken = md5('unique_salt' . $_POST['timestamp']);

if (!empty($_FILES) &&  !empty($verifyToken)) {
	$tempFile   = $_FILES['Filedata']['tmp_name'];
	$uploadDir  = $_SERVER['DOCUMENT_ROOT'] . $uploadDir;
	$targetFile = $uploadDir . $_FILES['Filedata']['name'];
        //echo $targetFile;
	// Validate the filetype
	$fileParts = pathinfo($_FILES['Filedata']['name']);
	if (in_array(strtolower($fileParts['extension']), $fileTypes)) {

		// Save the file
		move_uploaded_file($tempFile, $targetFile);
		//echo 1;
            

	} else {

		// The file type wasn't allowed
		echo 'Invalid file type.';

	}
}
?>