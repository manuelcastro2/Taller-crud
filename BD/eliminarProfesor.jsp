<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="../WEB-INF/jspf/conexion.jspf" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/eliminarProfesor.css">
    <title>index</title>
</head>
<body>
    <div class="caja-todo">
        <div class="caja-intermedia">
            <div class="caja-titulo">
            <h1>SISTEMA UNIVERSITARIO</h1>
            <h1 class="titulo-pagina">ElIMINAR  PROFESOR</h1>
            </div>
            <div class="caja-delantera">
                <c:if test="${param.id!=null}">
                    <sql:update var="result" dataSource="${taller}">
                        delete from taller where id=${param.id}
                    </sql:update>
                    <c:if test="${result == 1}">
                        <h1 class="caja-titulo2">Profesor eliminado correctamente</h1>
                        <a href="../index.jsp">
                        <span>REGRESAR</span>
                            </a>
                    </c:if>
                </c:if>
            </div>
        </div>
    </div>
</body>
</html>