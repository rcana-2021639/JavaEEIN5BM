<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD_Usuario</title>
    <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
    <link rel="stylesheet" href="../Styles/UsuarioAdmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>

<body>
    <nav class="navbar">
        <div class="nav-content">
            <div class="logo">K<span>C</span></div>
            <ul class="menu">
                <li><a href="vistaadmin.jsp">Menú Administrador</a></li>
            </ul>
        </div>
    </nav>
    <section>
        <div class="container">
            <h1>Bienvenido al CRUD completo de la entidad <b>Usuario</b></h1>
            <!-- Formulario agregar/actualizar -->
            <div class="section">
                <h2>Agregar o actualizar usuario</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="text" id="nombreUsuario" class="entrada_texto" required>
                            <label class="label-input-number">Nombre Usuario</label>
                        </div>
                        <div class="form-group">
                            <input type="password" id="contrasena" class="entrada_texto" required>
                            <label class="label-input-number">Contraseña</label>
                        </div>
                        <div class="form-group">
                            <select id="tipoUsuario" class="entrada_texto" required>
                                <option value="" disabled selected hidden></option>
                                <option value="Empleado">Empleado</option>
                                <option value="Cliente">Cliente</option>
                            </select>
                            <label class="label-input">Tipo Usuario</label>
                        </div>
                        <div class="form-group">
                            <input type="date" id="fechaRegistro" class="entrada_texto" required>
                            <label class="label-input-number">Fecha registro</label>
                        </div>
                    </div>
                    <div class="form-row">
                        <button type="button" class="btn_crear_producto">
                            <span class="bnt_texto">Crear Usuario</span>
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
                                <th>Código del Usuario</th>
                                <th>Nombre Usuario</th>
                                <th>Contraseña</th>
                                <th>Tipo Usuario</th>
                                <th>Fecha registro</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Josué</td>
                                <td>*******</td>
                                <td>Empleado</td>
                                <td>2025-06-01</td>
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