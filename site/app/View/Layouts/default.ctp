<?php
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

$cakeDescription = __d('cake_dev', 'CakePHP: the rapid development php framework');
$cakeVersion = __d('cake_dev', 'CakePHP %s', Configure::version())
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
	    <title>#PartiuRural</title>
	    <meta name="viewport" content="width=device-width, user-scalable=no">
	    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,100italic,300italic,400italic,500,700,900,500italic,700italic,900italic' rel='stylesheet' type='text/css'>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />	    
	    <link rel="stylesheet" type="text/css" href="<?=$this->Html->url('/');?>assets/css/style.css" />

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body class="<?= isset($body_for_layout) ? $body_for_layout : ''; ?>">
	    <div class="overlay-menu"></div>
	    <header class="row">
	        <div class="top-menu">
	            <div class="container menu">	    
	                <h1 class="col-xs-12 col-sm-12 col-md-4 col-lg-2"><a href="<?=$this->Html->url('/');?>"><img src="<?=$this->Html->url('/');?>assets/images/logo-cinza.png" /></a></h1>
	                <a href="#toggle-menu" class="hidden-sm hidden-md hidden-lg"><i class="fa fa-bars"></i></a>
	                <ul class="col-xs-10 col-sm-12 col-md-8 col-lg-9 col-lg-offset-1">
	                    <li class="col-xs-12"><a href="#hoteis">HOTÉIS</a></li>
	                    <li class="col-xs-12"><a href="#turismo">TURISMO</a></li>
	                    <li class="col-xs-12"><a href="#pacotes">PACOTES</a></li>
	                    <li class="col-xs-12"><a href="#comida">COMIDA</a></li>
	                    <li class="col-xs-12"><a href="#artesanato">ARTESANATO</a></li>
	                    <li class="col-xs-12 last"><a href="#lazer">LAZER</a></li>
	                </ul>
	            </div>
	        </div>
	        <div class="top-busca">
	            <div class="row search">
	                <div class="container">
	                    <p class="col-xs-12 col-sm-4 col-md-2 col-lg-2">Para onde gostaria de ir?</p>
	                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
	                        <div class="icon-inputs destino">
	                            <i class="fa fa-map-marker"></i>
	                            <input name="localizacao" />
	                        </div>
	                    </div>
	                    <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
	                        <div class="icon-inputs calendario">
	                            <i class="fa fa-calendar-o"></i>
	                            <input name="data-de" />
	                        </div>
	                    </div>
	                    <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
	                        <div class="icon-inputs calendario">
	                            <i class="fa fa-calendar-o"></i>
	                            <input name="data-ate" /></div>
	                        </div>
	                    <div class="col-xs-4 col-sm-4 col-md-1 col-lg-1">
	                        <div class="icon-inputs peoples">
	                            <i class="fa fa-users"></i>
	                            <input name="qtd-pessoas" />
	                        </div>
	                    </div>
	                    <button class="col-xs-12 col-sm-8 col-md-1 col-lg-1 buscar">Buscar</button>
	                </div>
	            </div>
	        </div>
	    </header>
	    <!-- /header -->

	    <!-- CONTENT -->
	    <?php echo $this->Session->flash(); ?>
		<?php echo $this->fetch('content'); ?>
		<!-- /CONTENT -->

		<!-- FOOTER -->
	    <footer class="row">
	        <div class="container">
	            <h2>RODAPÉ</h2>
	        </div>
	    </footer>
	    <section class="row copyright">
	        <div class="container">
	            Partiu Rural - Todos os direitos reservados.
	        </div>
	    </section>
	    <!-- /FOOTER -->
	    <script src="http://code.jquery.com/jquery-1.11.3.min.js" type="text/javascript"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	    <script src="<?=$this->Html->url('/');?>assets/js/main.js" type="text/javascript"></script>
		<?php echo $this->element('sql_dump'); ?>
	</body>
</html>