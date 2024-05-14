<?php
// Dados de conexão com o banco de dados
$DATABASE_HOST = 'localhost';
$DATABASE_PORT = '5432';
$DATABASE_USER = 'postgres';
$DATABASE_PASS = 'postgres';
$DATABASE_NAME = 'pizzariacomBruno';

try {
    // Criação da conexão PDO
    $pdo = new PDO('pgsql:host=' . $DATABASE_HOST . ';port=' . $DATABASE_PORT . ';dbname=' . $DATABASE_NAME, $DATABASE_USER, $DATABASE_PASS);
    // Configuração do modo de erro para Exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $exception) {
    // Em caso de falha na conexão, exibir mensagem de erro
    exit('Erro de conexão com o banco de dados: ' . $exception->getMessage());
}

// Validar o login do usuário
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Verificar se os campos do formulário foram preenchidos
    if (isset($_POST['user_type']) && isset($_POST['username']) && (isset($_POST['password']) || isset($_POST['employee_password']))) {
        $user_type = $_POST['user_type'];
        $username = $_POST['username'];
        $password = isset($_POST['password']) ? $_POST['password'] : $_POST['employee_password'];
    ;

        // Consultar o banco de dados para verificar as credenciais do usuário
        if ($user_type === 'user') {
            $sql = "SELECT * FROM contatos WHERE email = :username AND senha = :password";
        } elseif ($user_type === 'employee') {
            $sql = "SELECT * FROM funcionarios WHERE id = :username AND senha = :password";
        }

        try {
            // Preparar a consulta
            $stmt = $pdo->prepare($sql);
            // Executar a consulta
            $stmt->execute([
                'username' => $username,
                'password' => $password
            ]);

            // Verificar se encontrou um registro correspondente
            if ($stmt->rowCount() == 1) {
                // Usuário autenticado com sucesso, redirecionar para a página apropriada
                if ($user_type === 'user') {
                    header("Location: index.php"); // Redireciona para a página do cliente
                    exit();
                } elseif ($user_type === 'employee') {
                    header("Location: employee_dashboard.php"); // Redireciona para o painel do funcionário
                    exit();
                }
            } else {
                // Usuário não autenticado, redirecionar de volta para a página de login com mensagem de erro
                header("Location: login.php?error=1");
                exit();
            }
        } catch (PDOException $exception) {
            // Em caso de falha na consulta, exibir mensagem de erro
            exit('Erro na consulta ao banco de dados: ' . $exception->getMessage());
        }
    }
}
?>
