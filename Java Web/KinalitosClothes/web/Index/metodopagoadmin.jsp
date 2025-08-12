<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta https-equiv=" X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD_MetodoPago</title>
    <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
    <link rel="stylesheet" href="../Styles/metodopagoadmin.css">
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
            <h1>Bienvenido al CRUD completo de la entidad <b>Método de Pago</b></h1>

            <!-- Formulario agregar/actualizar -->
            <div class="section">
                <h2>Agregar o actualizar método de pago</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <select class="entrada_texto" id="tipoMetodoPago" required>
                                <option value="" disabled selected hidden></option>
                                <option value="Tarjeta">Tarjeta</option>
                                <option value="Efectivo">Efectivo</option>
                            </select>
                            <label class="label-input">Tipo de Método</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtEntidadFinanciera" required>
                            <label class="label-input">Entidad Financiera</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtMoneda" required>
                            <label class="label-input">Moneda</label>
                        </div>
                    </div>
                    <div class="form-row">
                        <button type="button" class="btn_crear_producto">
                            <span class="bnt_texto">Crear Método Pago</span>
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
                                <th scope="col">Código</th>
                                <th scope="col">Tipo</th>
                                <th scope="col">Entidad Financiera</th>
                                <th scope="col">Moneda</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Tarjeta</td>
                                <td>Banco BI</td>
                                <td>Quetzales</td>
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