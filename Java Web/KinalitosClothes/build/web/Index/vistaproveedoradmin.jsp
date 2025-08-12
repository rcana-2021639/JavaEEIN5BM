<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta https-equiv=" X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD_Proveedor</title>
    <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
    <link rel="stylesheet" href="../Styles/vistaproveedoradmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>

<body>
    <nav class="navbar">
        <div class="nav-content">
            <div class="logo">K<span>C</span></div>
            <ul class="menu">
                <li><a href="vistaadmin.jsp">Menu Administrador</a></li>
            </ul>
        </div>
    </nav>

    <section>
        <div class="container">
            <h1>Bienvenido al CRUD completo de la entidad <b>Proveedor</b></h1>

            <!-- Formulario agregar/actualizar -->
            <div class="section">
                <h2>Agregar o actualizar proveedor</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtNombreProveedor" required>
                            <label class="label-input">Nombre Proveedor</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtDescripcionProveedor" required>
                            <label class="label-input">Descripción</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="numPrecioProveedor" step="0.01" min="0" placeholder="0.00" required>
                            <label class="label-input-number">Precio en Quetzales</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="numStockProveedor" min="0" placeholder="0" required>
                            <label class="label-input-number">Stock</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="numCodigoProveedor" min="0" placeholder="0" required>
                            <label class="label-input-number">Código del Proveedor</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="numCodigoCategoria" min="0" placeholder="0" required>
                            <label class="label-input-number">Código de la Categoría</label>
                        </div>
                    </div>
                    <div class="form-row">
                        <button type="button" class="btn_crear_producto">
                            <span class="bnt_texto">Crear Proveedor</span>
                            <span class="btn_icono">
                                <i class="fa-solid fa-plus"></i>
                            </span>
                        </button>
                        <button type="button" class="btn_actualizar">
                            <span class="bnt_texto">Actualizar</span>
                            <span class="btn_icono">
                                <i class="fa-solid fa-pen-to-square"></i>
                            </span>
                        </button>
                    </div>
                </form>
            </div>

            <!-- Lista -->
            <div class="section">
                <h2>Lista</h2>
                <div class="table-container">
                    <table>
                        <thead>
                            <tr>
                                <th>Código del Proveedor</th>
                                <th>Nombre</th>
                                <th>Descripción</th>
                                <th>Precio</th>
                                <th>Stock</th>
                                <th>Código Proveedor</th>
                                <th>Código Categoría</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Proveedor Ejemplo</td>
                                <td>Proveedor de telas</td>
                                <td>Q 250.00</td>
                                <td>5</td>
                                <td>1</td>
                                <td>2</td>
                                <td>
                                    <div class="botonesTabla">
                                        <button type="button" class="btn_editar" id="btnEditarRegistro">
                                            <span class="bnt_texto">Editar</span>
                                            <span class="btn_icono">
                                                <i class="fa-solid fa-pen-to-square"></i>
                                            </span>
                                        </button>
                                        <button type="button" class="btn_eliminar" id="btnEliminarRegistro">
                                            <span class="bnt_texto">Eliminar</span>
                                            <span class="btn_icono">
                                                <i class="fa fa-trash"></i>
                                            </span>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <form class="mensaje_eliminar">
                    <input type="hidden">
                    <div class="message warning">
                        <i class="fa fa-exclamation-triangle"></i>
                        <strong>¡Atención!</strong> Recuerda que vas a eliminar un registro, si lo haces se borrará de forma permanente y no se podrá recuperar.
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>
</html>