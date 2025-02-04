<?php
// Inclui o arquivo de conexão
include 'conecta.php';

// Obtém os dados do formulário
$nome = $_POST['nome'];
$email = $_POST['email'];
$duvida = $_POST['duvida'];
$telefone = $_POST['telefone'];

// Prepara a instrução SQL
$sql = "INSERT INTO mensagens (nome, email, duvida, telefone) VALUES ('$nome', '$email', '$duvida', '$telefone')";



// Executa a query e verifica o resultado
if ($conn->query($sql) === TRUE) {
    echo "Mensagem enviada com sucesso!";
    echo "<br><a href='index.html'>Voltar para a página inicial</a>";
} else {
    echo "Erro ao enviar mensagem: " . $conn->error;
}

// Fecha a conexão
$conn->close();
?>
