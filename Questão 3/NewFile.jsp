<!DOCTYPE html>
<html>
<head>
    <title>Informações da Sessão</title>
</head>
<body>
    <h1>Informações da Sessão</h1>
    <p>ID da Sessão: ${sessionScope.id}</p>
    <p>Data e Hora de Criação da Sessão: ${sessionScope.creationTime}</p>
    <p>Data e Hora do Último Acesso: ${sessionScope.lastAccessTime}</p>
    <p>Número de Acessos à Sessão: ${sessionScope.accessCount}</p>
    <p>${sessionScope.message}</p>
</body>
</html>
