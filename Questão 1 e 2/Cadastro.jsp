<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Usu�rio</title>
</head>
<body>
    <h1>Cadastro de Novo Usu�rio</h1>
    <form action="ProcessaCadastroServlet" method="post">
        <!-- Informa��es Pessoais -->
        <h2>Informa��es Pessoais</h2>
        Nome: <input type="text" name="nome"><br>
        Email: <input type="email" name="email"><br>

        <!-- Informa��es Acad�micas -->
        <h2>Informa��es Acad�micas</h2>
        Institui��o: <input type="text" name="instituicao"><br>
        Curso: <input type="text" name="curso"><br>

        <!-- Informa��es Profissionais -->
        <h2>Informa��es Profissionais</h2>
        Cargo: <input type="text" name="cargo"><br>
        
        <!-- Cor Favorita -->
        <h2>Cor Favorita</h2>
        Cor: <input type="color" name="cor"><br>

        <input type="submit" value="Cadastrar">
    </form>
</body>
</html>