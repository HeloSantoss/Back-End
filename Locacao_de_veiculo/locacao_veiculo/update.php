<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();
$msg = '';

// Verifica se o ID do contato existe
if (isset($_GET['id_contato'])) {
    // Verifica se o formulário foi submetido
    if (!empty($_POST)) {
        // Esta parte é semelhante ao create.php, mas aqui estamos atualizando um registro e não inserindo
        $id_contato = isset($_POST['id_contato']) ? $_POST['id_contato'] : NULL;
        $nome = isset($_POST['nome']) ? $_POST['nome'] : '';
        $email = isset($_POST['email']) ? $_POST['email'] : '';
        $cel = isset($_POST['cel']) ? $_POST['cel'] : '';
        $pizza = isset($_POST['pizza']) ? $_POST['pizza'] : '';
        $cadastro = isset($_POST['cadastro']) ? $_POST['cadastro'] : date('Y-m-d H:i:s');
        // Atualiza o registro
        $stmt = $pdo->prepare('UPDATE contatos SET nome = ?, email = ?, cel = ?, pizza = ?, cadastro = ? WHERE id_contato = ?');
        $stmt->execute([$nome, $email, $cel, $pizza, $cadastro, $_GET['id_contato']]);
        $msg = 'Atualização Realizada com Sucesso!';
    }
    // Obter o contato da tabela contatos
    $stmt = $pdo->prepare('SELECT * FROM contatos WHERE id_contato = ?');
    $stmt->execute([$_GET['id_contato']]);
    $contato = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$contato) {
        exit('Pedido Não Localizado!');
    }
} else {
    exit('Nenhum Pedido Especificado!');
}
?>

<?=template_header('Atualizar/Alterar Pedidos')?>

<div class="content update">
    <h2>Atualizar Contato - <?=$contato['id_contato']?></h2>
    <form action="update.php?id_contato=<?=$contato['id_contato']?>" method="post">
        <label for="nome">Nome</label>
        <input type="text" name="nome" placeholder="Seu Nome" value="<?=$contato['nome']?>" id="nome">
        <label for="email">Email</label>
        <input type="text" name="email" placeholder="seuemail@seuprovedor.com.br" value="<?=$contato['email']?>" id="email">
        <label for="cel">Celular</label>
        <input type="text" name="cel" placeholder="(XX) X.XXXX-XXXX" value="<?=$contato['cel']?>" id="cel">
        <label for="pizza">Pizza</label>
        <input type="text" name="pizza" placeholder="Pizza" value="<?=$contato['pizza']?>" id="pizza">
        <label for="cadastro">Criação</label>
        <input type="datetime-local" name="cadastro" value="<?=date('Y-m-d\TH:i', strtotime($contato['cadastro']))?>" id="cadastro">
        <input type="submit" value="Update">
    </form>
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php endif; ?>
</div>

<?=template_footer()?>
