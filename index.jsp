<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="WEB-INF/jspf/conexion.jspf" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/index.css">
    <title>index</title>
</head>
<body>
    <sql:query var="result" scope="request" dataSource="${taller}">
        select * from taller
    </sql:query>
    <div class="caja-todo">
        <div class="caja-intermedia">
            <div class="caja-titulo">
            <h1>SISTEMA UNIVERSITARIO</h1>
            <h1>DATOS PROFESORES</h1>
            </div>
            <div class="caja-delantera">
            <a href="BD/agregarProfesor.jsp" data-text="Awesome" class="button">
            <span class="actual-text">&nbsp;AGREGAR PROFESOR&nbsp;</span>
    <span class="hover-text" aria-hidden="true">&nbsp;AGREGAR PROFESOR&nbsp;</span>
            </a>
              <div>
                  <table class="item tres">
                    <thead>
                        <tr>
                            <th>
                                cedula
                            </th>
                            <th>
                                nombre
                            </th>
                            <th>
                                area
                            </th>
                            <th>
                                categoria
                            </th>
                            <th>
                                descripcion
                            </th>
                            <th colspan="2">
                            acciones
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="fila" items="${result.rows}">
                        <tr>
                        <td><c:out value="${fila.cedula}"/></td>
                        <td><c:out value="${fila.nombre}"/></td>
                        <td><c:out value="${fila.area}"/></td>
                        <td><c:out value="${fila.categoria}"/></td>
                        <td><c:out value="${fila.descripcion}"/></td>
                        <td><a class="button2" href="BD/eliminarProfesor.jsp?id=${fila.id}">Eliminar</td>
                        <td><a class="button2" href="BD/actualizarProfesor.jsp?id=${fila.id}">Editar</td>
                        </c:forEach>
                        </tr>
                    </tbody>
                </table>
              </div>
            </div>
        </div>
    </div>
</body>
</html>