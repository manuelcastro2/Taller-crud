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
    <link rel="stylesheet" href="../CSS/agregarProfesor.css">
    <title>index</title>
</head>
<body>
    <sql:query var="result" scope="request" dataSource="${taller}">
        select * from taller
    </sql:query>
    <div class="caja-todo">
        <div class=caja-intermedia>
         <div class="caja-titulo">
                <h1>SISTEMA UNIVERSITARIO</h1>
            <h1 class="titulo-pagina">AGREGAR PROFESOR</h1>
            </div>
            <div class="caja-delantera">
                <c:if test="${param.nombre==null}">
                <form method="post">

                    <input type="text" name="cedula" id="cedula" placeholder="CEDULA"><br>

                    <input type="text" name="nombre" id="nombre" placeholder="NOMBRE"><br>

                    <select id="categoria" name="categoria">
                        <option>SELECIONE</option>
                        <option value="doctorado">doctorado</option>
                        <option value="maestria">maestria</option>
                        <option value="especialidad">especiales</option>
                        <option value="profesional">otros</option>
                    </select><br>

                    <input type="text" id="area" name="area" placeholder="AREA"><br>

                    <input class="telefono" type="text" id="telefono" name="telefono" placeholder="TELEFONO"><br>

                    <textarea type="text" placeholder="DESCRIPCION..." name="descripcion" id="descripcion" cols="20" rows="3"></textarea><br>

                <button type="submit">REGISTRAR</button>
                </form>
                </c:if>
                <c:if test="${param.nombre!=null}">
                    <sql:update var="result" dataSource="${taller}">
                    insert into taller (cedula,nombre,area,categoria,telefono,descripcion)
                    values('${param.cedula}','${param.nombre}','${param.area}','${param.categoria}','${param.telefono}','${param.descripcion}')
                    </sql:update>  
                <c:if test="${result == 1}">
                    <h1 class="caja-titulo2">Registro exitoso</h1>
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