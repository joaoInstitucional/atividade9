<!DOCTYPE html>
<html>
<head>
    <title>Informa��es da Sess�o</title>
</head>
<body>
    <h1>Informa��es da Sess�o</h1>
    <p>ID da Sess�o: ${sessionScope.id}</p>
    <p>Data e Hora de Cria��o da Sess�o: ${sessionScope.creationTime}</p>
    <p>Data e Hora do �ltimo Acesso: ${sessionScope.lastAccessTime}</p>
    <p>N�mero de Acessos � Sess�o: ${sessionScope.accessCount}</p>
    <p>${sessionScope.message}</p>
</body>
</html>
