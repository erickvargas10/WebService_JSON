<%-- 
    Document   : prueba
    Created on : Aug 16, 2020, 3:27:52 PM
    Author     : andre
--%>

<%@page import="uddi.Figuras_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#FFCC99" text="#CC3300" link="#666633" vlink="#669999" alink="#FF6600" topmargin="50" leftmargin="50" marginheight="50" marginwidth="50" >
        <h1 align="center">FIGURAS</h1>
        
        
        <%-- Formulario captura datos --%>
        <form align="center" action="prueba.jsp" method="POST">
            <h2>Cuadrado</h2>
            <label  color="blue" for="txt_nombre">Ingrese  Numero 1</label>              
            <input type="text" name="txt_num1"/>
            
            <label  color="blue" for="txt_nombre"> Ingrese Numero 2</label>              
            <input type="text" name="txt_num2"/>
            <br>
            <br>
                       
            <button type="submit">Enviar</button>
            
            <br>
            <br>
            
              <h2>Rectángulo</h2>
                  <label  color="blue" for="txt_nombre">Ingrese  Numero 1</label>              
            <input type="text" name="txt_num1"/>
            
            <label  color="blue" for="txt_nombre"> Ingrese Numero 2</label>              
            <input type="text" name="txt_num2"/>
              <br>
            <br>
                <button type="submit">Enviar</button>
              <br>
            <br>
                <h2>Triángulo</h2>
                    <label  color="blue" for="txt_nombre">Ingrese  Numero 1</label>              
            <input type="text" name="txt_num1"/>
            
            <label  color="blue" for="txt_nombre"> Ingrese Numero 2</label>              
            <input type="text" name="txt_num2"/>
              <br>
            <br>
              <button type="submit">Enviar</button>
            
        </form>
        
         <%-- variables de datos --%>
         <%! 
         String s_num1,s_num2; 
         %>
         
         <%-- almacenar en los datos --%>
         <%
            s_num1 = request.getParameter("txt_num1");
            s_num2 = request.getParameter("txt_num2");
         %>
        
        
    </body>
</html>

        <%-- web service invocar --%>
         <%
            try {
                    uddi.Figuras_Service service = new Figuras_Service();
                    uddi.Figuras port = service.getFigurasPort();
                    
                    double lado1 = Double.parseDouble(s_num1);
                    double lado2 = Double.parseDouble(s_num2);
                    
                    double result = port.triangulo(lado1, lado2);
                    out.println("Resultado = " +result);
                            
                        
                        
                } catch (Exception e) {
                    
                }
         %>
