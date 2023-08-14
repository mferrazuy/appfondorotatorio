<?php include 'templates/encabezado.php'; ?>
<div class="add-container">
    <form class="add-form">
      <h2>Ingresar Factura</h2>
      <div class="form-group">
        <label for="fecha-ingreso">Fecha Ingreso:</label>
        <input type="text" id="fecha-ingreso" name="fecha-ingreso" required placeholder="<?php echo ("01/08/2023");?>" disabled>
      </div>
      <div class="form-group">
        <label for="numero-rut">RUT:</label>
        <input type="text" id="numero-rut" name="numero-rut" required>
        <a class="form-add" href="empresa/agregar.php" > + </a>
      </div>
      <div class="form-group">
        <label for="razon-social">Razón social:</label>
        <input type="text" id="razon-social" name="razon-social" required>
      </div>
      <div class="form-group">
        <label for="serie-fact">Serie Factura:</label>
        <input type="text" id="serie-fact" name="serie-fact" required >
      </div>      
      <div class="form-group">
        <label for="numero-fact">Número Factura:</label>
        <input type="text" id="numero-fact" name="numero-fact" required pattern="[0-9]+">
      </div>
      <div class="form-group">
        <label for="unidad-ejercito">Unidad del Ejército:</label>
        <input type="text" id="unidad-ejercito" name="unidad-ejercito" required>
      </div>
      <div class="form-group">
        <label id="unidad-nombre">Nombre de la Unidad :</label>
        <input type="hidden" id="unidad-ID" name="unidad-ID" >
      </div>
      <button type="submit">Ingresar</button>
    </form>
  </div>
</main>
<?php include 'templates/pie.php'; ?>
