<?php
$servidor = "localhost";
$usuario = "root";
$senha = "";
$banco = "contato";

// Criar conexão
$conn = new mysqli($servidor, $usuario, $senha, $banco);

// Verificar conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}
?>