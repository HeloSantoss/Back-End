<?php
// Incluir o arquivo de conexão com o banco de dados
include 'database.php';

// Verificar se o parâmetro de consulta foi enviado
if (isset($_GET['query']) && !empty($_GET['query'])) {
    try {
        // Preparar a consulta SQL para buscar contatos que correspondam à pesquisa
        $query = '%' . $_GET['query'] . '%';
        $sql = "SELECT * FROM contatos WHERE nome ILIKE :query OR email ILIKE :query OR pizza ILIKE :query";

        // Preparar e executar a consulta
        $stmt = $pdo->prepare($sql);
        $stmt->execute(['query' => $query]); // Passando o valor diretamente

        // Verificar se há resultados
        if ($stmt->rowCount() > 0) {
            // Exibir os resultados
            echo "<h2>Resultados da Pesquisa:</h2>";
            echo "<ul>";
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                echo "<li>Nome: {$row['nome']} - Email: {$row['email']} - Pizza: {$row['pizza']}</li>";
            }
            echo "</ul>";
        } else {
            echo "<p>Nenhum resultado encontrado para '{$_GET['query']}'</p>";
        }
    } catch (PDOException $e) {
        // Em caso de erro na consulta
        echo "Erro na pesquisa: " . $e->getMessage();
    }
} else {
    // Se nenhum parâmetro de pesquisa for fornecido
    echo "Por favor, forneça um termo de pesquisa.";
}
?>
