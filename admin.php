<?php
session_start();
// Conexão com o banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bd_usuarios";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtem os dados do formulário
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Verifica se o usuário e senha estão corretos
    $sql = "SELECT * FROM usuarios WHERE username = '$username' AND password = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
     // Se o usuário e senha estão corretos, inicia a sessão
    session_start();
    $_SESSION["autenticado"] = true;
    $_SESSION["username"] = $username;
    header("Location: visualizar_editar.php");
    exit();
    } else {
     // Se o usuário e senha não estão corretos, exibe uma mensagem de erro
    echo "Usuário ou senha incorretos";
    }
}    
    // Fecha a conexão com o banco de dados
    $conn->close();

?>