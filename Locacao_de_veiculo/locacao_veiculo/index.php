<?php
include 'functions.php';

// Chama a função template_header com o título 'Pizzaria Dom Bruno'
template_header('Veiculos Alugados ');
?>



<div class="content">
    <!-- <h2>Inicio</h2>
    <p>Seja Bem-Vindo!</p> -->
</div>
<div class="shopping-cart">

   <section>

      <div id="close-cart"><span>fechar</span></div>

      <div class="box">
         <a href="#" class="fas fa-times"></a>
         <img src="/images/carro.jpg" alt="">
         <div class="content">
            <p>pizza-1 <span>( $3/- x 2 )</span></p>
            <form action="" method="post">
               <input type="number" class="qty" name="qty" min="1" value="2" max="100">
               <button type="submit" class="fas fa-edit" name="update_qty"></button>
            </form>
         </div>
      </div>

      <div class="box">
         <a href="#" class="fas fa-times"></a>
         <img src="images/pizza-3.jpg" alt="">
         <div class="content">
            <p>pizza-3 <span>( $2/- x 1 )</span></p>
            <form action="" method="post">
               <input type="number" class="qty" name="qty" min="1" value="1" max="100">
               <button type="submit" class="fas fa-edit" name="update_qty"></button>
            </form>
         </div>
      </div>

      <div class="box">
         <a href="#" class="fas fa-times"></a>
         <img src="/images/pizza-6.jpg" alt="">
         <div class="content">
            <p>pizza-6 <span>( $4/- x 2 )</span></p>
            <form action="" method="post">
               <input type="number" class="qty" name="qty" min="1" value="2" max="100">
               <button type="submit" class="fas fa-edit" name="update_qty"></button>
            </form>
         </div>
      </div>

      <div class="box">
         <a href="#" class="fas fa-times"></a>
         <img src="images/pizza-7.jpg" alt="">
         <div class="content">
            <p>pizza-7 <span>( $2/- x 1 )</span></p>
            <form action="" method="post">
               <input type="number" class="qty" name="qty" min="1" value="1" max="100">
               <button type="submit" class="fas fa-edit" name="update_qty"></button>
            </form>
         </div>
      </div>

      <a href="#order" class="btn">pedir agora</a>

   </section>

</div>

<div class="home-bg">

   <section class="home" id="home">

      <div class="slide-container">

         <div class="slide active">
            <div class="image">
               <img src="images/pngcarro1.png" alt="">
            </div>
            <div class="content">
               <h3>Venha conhecer nosso Espaço</h3>
               <div class="fas fa-angle-left" onclick="prev()"></div>
               <div class="fas fa-angle-right" onclick="next()"></div>
            </div>
         </div>

         <div class="slide">
            <div class="image">
               <img src="images/pngcarro2.png" alt="">
            </div>
            <div class="content">
               <h3>Pizza Com Cogumelos</h3>
               <div class="fas fa-angle-left" onclick="prev()"></div>
               <div class="fas fa-angle-right" onclick="next()"></div>
            </div>
         </div>

         <div class="slide">
            <div class="image">
               <img src="images/pngcarro3.png" alt="">
            </div>
            <div class="content">
               <h3>Mascarpone E Cogumelos</h3>
               <div class="fas fa-angle-left" onclick="prev()"></div>
               <div class="fas fa-angle-right" onclick="next()"></div>
            </div>
         </div>

      </div>

   </section>

</div>

<!-- seção sobre começa  -->

<section class="about" id="about">

   <h1 class="heading">sobre nós</h1>

   <div class="box-container">

   <div class="box">
    <img src="images/1.jpg" alt="">
    <h3>Concessionária</h3>
    <p>Na nossa concessionária, qualidade é a nossa marca registrada. Cada veículo em nosso estoque é cuidadosamente selecionado e inspecionado para garantir que atenda aos mais altos padrões de excelência. Nossos clientes podem confiar em nós para fornecer veículos de qualidade superior, prontos para atender às suas necessidades e superar suas expectativas. Com transparência e compromisso com a satisfação do cliente, somos a escolha confiável para quem busca qualidade e confiança em cada negócio realizado.</p>
    <a href="#menu" class="btn">ver mais</a>
</div>

<div class="box">
    <img src="images/2.jpg" alt="">
    <h3>Mecânico</h3>
    <p>Na nossa empresa, a excelência mecânica é uma promessa cumprida diariamente. Nossos habilidosos mecânicos garantem que cada componente funcione com precisão e confiabilidade, restaurando confiança e mantendo nossa operação em pleno funcionamento. Com expertise e paixão, eles são a espinha dorsal do nosso sucesso.</p>
    <a href="#menu" class="btn">ver mais</a>
</div>

<div class="box">
    <img src="images/3.jpg" alt="">
    <h3>Vrumzinho!</h3>
    <p>Nossa concessionária é sinônimo de qualidade. Cada veículo em nosso estoque é cuidadosamente selecionado e inspecionado para garantir excelência. Com transparência e compromisso, oferecemos veículos de alta qualidade, superando expectativas. Conte conosco para uma experiência excepcional de compra de carro. Venha nos visitar hoje e descubra por que somos a escolha confiável para suas necessidades automotivas.</p>
    <a href="#menu" class="btn">ver mais</a>
</div>


   </div>

</section>

<!-- seção sobre termina -->

<!-- seção de menu começa  -->

<section id="menu" class="menu">

   <h1 class="heading">Catalogo de Carros:</h1>

   <div class="box-container">

      <div class="box">
         <div class="price">R$<span>00,00</span>/-</div>
         <img src="/images/carro.jpg" alt="">
         <div class="name">CHEVROLET ONIX SEDAN PRISMA 2020 TEASER</div>
         <form action="" method="post">
            <input type="number" min="1" max="100" value="1" class="qty" name="qty">
            <input type="submit" value="adicionar ao carrinho" name="add_to_cart" class="btn">
         </form>
      </div>

      <div class="box">
         <div class="price">R$<span>00,00</span>/-</div>
         <img src="/images/carro2.jpg" alt="">
         <div class="name">PICK UP</div>
         <form action="" method="post">
            <input type="number" min="1" max="100" value="1" class="qty" name="qty">
            <input type="submit" value="adicionar ao carrinho" name="add_to_cart" class="btn">
         </form>
      </div>

      <div class="box">
         <div class="price">R$<span>00,00</span>/-</div>
         <img src="/images/carro3.jpg" alt="">
         <div class="name">FUSCA</div>
         <form action="" method="post">
            <input type="number" min="1" max="100" value="1" class="qty" name="qty">
            <input type="submit" value="adicionar ao carrinho" name="add_to_cart" class="btn">
         </form>
      </div>

      <div class="box">
         <div class="price">R$<span>00,00</span>/-</div>
         <img src="/images/carro4.jpg" alt="">
         <div class="name">CHEVROLET ONIX LT</div>
         <form action="" method="post">
            <input type="number" min="1" max="100" value="1" class="qty" name="qty">
            <input type="submit" value="adicionar ao carrinho" name="add_to_cart" class="btn">
         </form>
      </div>

      <div class="box">
         <div class="price">R$<span>30,00</span>/-</div>
         <img src="/images/carro5.jpg" alt="">
         <div class="name">TOYOTA ETIOS X</div>
         <form action="" method="post">
            <input type="number" min="1" max="100" value="1" class="qty" name="qty">
            <input type="submit" value="adicionar ao carrinho" name="add_to_cart" class="btn">
         </form>
      </div>

      <div class="box">
         <div class="price">R$<span>00,00</span>/-</div>
         <img src="/images/carro6.jpeg" alt="">
         <div class="name">NISSAN MARCH SV</div>
         <form action="" method="post">
            <input type="number" min="1" max="100" value="1" class="qty" name="qty">
            <input type="submit" value="adicionar ao carrinho" name="add_to_cart" class="btn">
         </form>
      </div>

      <div class="box">
         <div class="price">R$<span>00,00</span>/-</div>
         <img src="/images/carro7.jpg" alt="">
         <div class="name">HYUNDAI HB20 COMFORT PLUS</div>
         <form action="" method="post">
            <input type="number" min="1" max="100" value="1" class="qty" name="qty">
            <input type="submit" value="adicionar ao carrinho" name="add_to_cart" class="btn">
         </form>
      </div>    

      <div class="box">
         <div class="price">R$<span>00,00</span>/-</div>      
         <img src="/images/carro8.jpg" alt="">
         <div class="name">NISSAN VERSA SV</div>
         <form action="" method="post">
            <input type="number" min="1" max="100" value="1" class="qty" name="qty">
            <input type="submit" value="adicionar ao carrinho" name="add_to_cart" class="btn">
         </form>
      </div>

      <div class="box">
         <div class="price">R$<span>00,00</span>/-</div>
         <img src="/images/carro9.jpg" alt="">
         <div class="name">CORSA SEDAN</div>
         <form action="" method="post">
            <input type="number" min="1" max="100" value="1" class="qty" name="qty">
            <input type="submit" value="adicionar ao carrinho" name="add_to_cart" class="btn">
         </form>
      </div>

   </div>

</section>

<!-- seção de menu termina -->

<!-- seção de pedidos começa -->


<!-- seção de pedidos termina -->


<!-- seção de perguntas frequentes termina -->

<!-- seção de rodapé começa -->

<section class="footer">

   <div class="box-container">

      <div class="box">
         <i class="fas fa-phone"></i>
         <h3>número de telefone</h3>
         <p>+123-456-7890</p>
         <p>+111-222-3333</p>
      </div>

      <div class="box">
         <i class="fas fa-map-marker-alt"></i>
         <h3>nosso endereço</h3>
         <p>Limeira, São Paulo</p>
      </div>

      <div class="box">
         <i class="fas fa-clock"></i>
         <h3>horário de funcionamento</h3>
         <p>14:00 às 00:00</p>
      </div>

      <div class="box">
         <i class="fas fa-envelope"></i>
         <h3>endereço de e-mail</h3>
         <p>carro@gmail.com</p>
         <p>carrosn@gmail.com</p>
      </div>

   </div>

   <div class="credit">
      &copy; direitos autorais @ 2024 por <span>Rondely</span> | todos os direitos reservados!
   </div>

</section>

<!-- seção de rodapé termina -->

<!-- arquivo js personalizado link -->
<script src="js/script.js"></script>


<?=template_footer()?>
