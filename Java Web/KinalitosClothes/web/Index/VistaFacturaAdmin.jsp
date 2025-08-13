<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD_Factura</title>
    <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
    <link rel="stylesheet" href="../Styles/vistaproductoadmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>

<body>
    <nav class="navbar">
        <div class="nav-content">
            <div class="logo">K<span>C</span></div>
            <ul class="menu">
                    <li><a href="vistaclientesadmin.jsp">VistaCliente</a></li>
                    <li><a href="vistaproveedoradmin.jsp">VistaProveedor</a></li>
                    <li><a href="vistacategoria.jsp">VistaCategoria</a></li>
                    <li><a href="metodopagoadmin.jsp">VistaMetodoPago</a></li>
                    <li><a href="VistaUsuarioAdmin.jsp">VistaUsuario</a></li>
                    <li><a href="vistaadmin.jsp">INICIO</a></li>
                    <li><a href="vistaproductoadmin.jsp">VistaProducto</a></li>
                    <li><a href="vistapedidoadmin.jsp">VistaPedidos</a></li>
                    <li><a href="vistadetallepedidoadmin.jsp">VistaDetallePedido</a></li>
                    <li><a href="VistaFacturaAdmin.jsp">VistaFactura</a></li>
                    <li><a href="vistaempleadoadmin.jsp">VistaEmpleado</a></li>
                    </ul>
            </ul>
        </div>
    </nav>
    <section>
        <div class="container">
            <h1>Bienvenido al CRUD completo de la entidad <b>Factura</b></h1>
            <!-- Formulario agregar/actualizar -->
            <div class="section">
                <h2>Agregar o actualizar factura</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="date" class="entrada_texto" id="fechaEmision" required>
                            <label class="label-input-number">Fecha Emisión</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="descuentoAplicado" step="0.01" min="0" placeholder="0.00" required>
                            <label class="label-input-number">Descuento Aplicado</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="totalFactura" step="0.01" min="0" placeholder="0.00" required>
                            <label class="label-input-number">Total Factura</label>
                        </div>
                        <div class="form-group">
                            <select class="entrada_texto" id="estadoFactura" required>
                                <option value="" disabled selected hidden></option>
                                <option value="Emitida">Emitida</option>
                                <option value="Anulada">Anulada</option>
                                <option value="Pagada">Pagada</option>
                            </select>
                            <label class="label-input">Estado Factura</label>
                        </div>
                        <div class="form-group">
                            <select class="entrada_texto" id="formaEntrega" required>
                                <option value="" disabled selected hidden></option>
                                <option value="Fisica">Física</option>
                                <option value="Electronica">Electrónica</option>
                            </select>
                            <label class="label-input">Forma Entrega</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="codigoPedido" min="0" placeholder="0" required>
                            <label class="label-input-number">Código del Pedido</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="codigoEmpleado" min="0" placeholder="0" required>
                            <label class="label-input-number">Código del Empleado</label>
                        </div>
                    </div>
                    <div class="form-row">
                        <button type="button" class="btn_crear_producto">
                            <span class="bnt_texto">Crear Factura</span>
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
                                <th>Código de la Factura</th>
                                <th>Fecha Emisión</th>
                                <th>Descuento Aplicado</th>
                                <th>Total Factura</th>
                                <th>Estado Factura</th>
                                <th>Forma Entrega</th>
                                <th>Código Pedido</th>
                                <th>Código Empleado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>2025-06-01</td>
                                <td>Q150.00</td>
                                <td>Q600.00</td>
                                <td>Emitida</td>
                                <td>Física</td>
                                <td>1</td>
                                <td>1</td>
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