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
    <link rel="stylesheet" href="../CSS/actualizarProfesor.css">
    <title>index</title>
</head>
<body>
    <div class="caja-todo">
        <div class="caja-intermedia">
             <div class="caja-titulo">
                <h1>SISTEMA UNIVERSITARIO</h1>
            <h1 class="titulo-pagina">ACTUALIZAR PROFESOR</h1>
            </div>
            <div class="caja-delantera">
                <c:if test="${param.modificar ==null}">
                    <sql:query var="taller" dataSource="${taller}"> 
                        select * from taller where id=?
                    <sql:param value="${param.id}">
                    </sql:param>
                    </sql:query>
                    <form method="post">
                        <c:forEach var="itema" items="${taller.rows}">

                            <input type="text"name="cedula" id="cedula" value="${itema.cedula}">
                            <br>
                            <input type="text"name="nombre" id="nombre" value="${itema.nombre}">
                            <br>
                            <select id="categoria" name="categoria">
                                <option value="${itema.categoria}"><c:out value="${itema.categoria}" /> <-dato antiguo</option>
                                <option value="doctorado">doctorado</option>
                                <option value="maestria">maestria</option>
                                <option value="especialidad">especiales</option>
                                <option value="profesional">otros</option>
                            </select>
<br>
                            <input type="text"name="area" id="area" value="${itema.area}">
<br>
                            <input type="text"name="telefono" id="telefono" value="${itema.telefono}">
<br>
                            <textarea name="descripcion" id="descripcion" cols="20" rows="3">${itema.descripcion}</textarea>
<br>
                        </c:forEach>
                        <input type="hidden" name="modificar" id="modificar" value="si">
                        <button type="submit">ENVIAR</button>
                    </form>
                </c:if>
                <c:if test="${param.modificar !=null}">
        <sql:update var="result" dataSource="${taller}">
            update taller 
            set cedula='${param.cedula}',
            nombre='${param.nombre}',
            area='${param.area}',
            categoria='${param.categoria}',
            telefono='${param.telefono}',
            descripcion='${param.descripcion}'
             where id='${param.id}'
        </sql:update>
        
            <h1 class="caja-titulo2">Datos Actualizados correctamente</h1>
            <a href="../index.jsp">
            <span>REGRESAR</span> 
            </a>
        
    </c:if>
            </div>
        </div>
    </div>
    
</body>
</html>