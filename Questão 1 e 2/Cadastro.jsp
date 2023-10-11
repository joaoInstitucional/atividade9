<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Usuário</title>
</head>
<body>
    <h1>Cadastro de Novo Usuário</h1>
    <form action="ProcessaCadastroServlet" method="post">
        <!-- Informações Pessoais -->
        <h2>Informações Pessoais</h2>
        Nome: <input type="text" name="nome"><br>
        Email: <input type="email" name="email"><br>

        <!-- Informações Acadêmicas -->
        <h2>Informações Acadêmicas</h2>
        Instituição: <input type="text" name="instituicao"><br>
        Curso: <input type="text" name="curso"><br>

        <!-- Informações Profissionais -->
        <h2>Informações Profissionais</h2>
        Cargo: <input type="text" name="cargo"><br>
        
        <!-- Cor Favorita -->
        <h2>Cor Favorita</h2>
        Cor: <input type="color" name="cor"><br>

        <input type="submit" value="Cadastrar">
    </form>
</body>
</html>