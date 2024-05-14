<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url(/images/massa-de-pizza.webp);
        }

        .login-container {
            background-color: rgba(255, 0, 0, 0.5);
            /* Branco com 50% de opacidade */
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }


        h2 {
            margin-bottom: 20px;
            font-size: 50px;
        
        }

        input[type="submit"] {
            background-color: #007bff;
            border: none;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        select,
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        /* Estilizei o campo de ID do funcionário para aparecer apenas quando a opção "Funcionário" é selecionada */
        #employee-field {
            display: none;
        }
    </style>
</head>

<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="process_login.php" method="POST">
            <select name="user_type" id="user_type">
                <option value="user">Cliente</option>
                <option value="employee">Funcionário</option>
            </select>
            <br>
            <input type="text" name="username" placeholder="Nome de usuário ou e-mail" required>
            <br>
            <div id="employee-field">
                <input type="text" name="employee_id" placeholder="ID do funcionário">
                <br>
                <!-- <input type="password" name="password" placeholder="Senha" required> -->
            </div>
            <input type="submit" value="Login">
        </form>
    </div>

    <script>
        // Adicionei um evento de mudança para exibir ou ocultar o campo de ID do funcionário conforme a seleção do usuário
        document.getElementById('user_type').addEventListener('change', function() {
            var userType = this.value;
            var employeeField = document.getElementById('employee-field');
            if (userType === 'employee') {
                employeeField.style.display = 'block';
            } else {
                employeeField.style.display = 'none';
            }
        });
    </script>
</body>

</html>
