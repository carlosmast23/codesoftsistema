<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<link href="../css/estiloadmin.css" rel="stylesheet" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Subir Imagen</title>
</head>

<body>

<?php if ((isset($_POST["enviado"])) && ($_POST["enviado"] == "form1")) {
	$nombre_archivo = $_FILES['userfile']['name']; 
	move_uploaded_file($_FILES['userfile']['tmp_name'],$_POST["pagina"]."/img/".$nombre_archivo);
	//echo $_POST["pagina"]."/img/".$nombre_archivo;
        echo $_POST["pagina"]." - ".$_POST["nombrecampo"];
	?>
        <script>
				
               	opener.document.form1.<?php echo $_POST["nombrecampo"]; ?>.value="<?php echo $nombre_archivo; ?>";
				//alert('ok');
                self.close();
               
	</script>
    <?php
}
else
{?>


<form action="gestionimagen.php" method="post" enctype="multipart/form-data" id="form1" name="form1" class="margensuperior">

  <p>
    <input name="userfile" type="file" />
  </p>
  <p>
     <a class="button" href="javascript:document.form1.submit();"><span>Subir imagen</span></a> 
  </p>
  <input name="nombrecampo" type="hidden" value="<?php echo $_GET["campo"]; ?>" />
  <input type="hidden" name="enviado" value="form1" />
  <input type="hidden" name="pagina" value="<?php echo $_GET["pagina"]; ?>" />
</form>
<?php }?>
</body>
</html>