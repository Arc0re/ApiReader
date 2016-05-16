<?php 
	require 'data.php'; // GetData()
	require 'bdd.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>RSS API</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="custom.css">
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
    </head>
    <body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					</button>
					<a class="navbar-brand" href="#">TP API</a>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Flux</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</nav>
	
		<div class="container">
			<div class="template">
				<div class="page-header">
					<h1>
						RSS API
						<small>Choisissez la source d'information</small>
					</h1>
					<div class="select_feed">
						<form method="POST" action="#" class=".form-control">
							<select name="feeds[]">
								<option value="1">Washington Times section Politique</option>
								<option value="2">Huffington Post</option>
								<option value="3">Le Monde</option>
							</select>
							<input type="submit" value="Envoyer" class="btn btn-success">
						</form>
					</div>
				</div> <!-- page-header -->
				
				<?php 

				// RSS flux URL
				$politicsRSS        = 'http://www.washingtontimes.com/rss/headlines/news/politics/';
				$huffingtonPostRSS  = 'http://www.huffingtonpost.fr/feeds/news.xml';
				$leMonde            = 'http://rss.lemonde.fr/c/205/f/3067/index.rss';

				if ( isset( $_POST['feeds'] ) ) {
					$options = $_POST['feeds'];
					foreach ( $options as $values ) {
						switch ( $values ) {
							case '1': GetData( $politicsRSS ); break;
							case '2' : GetData( $huffingtonPostRSS ); break;
							case '3' : GetData( $leMonde ); break;
							default: echo "Oups"; break;
						} 
					}
				} else {
					echo "<h1>ERREUR</h1>";
				}
				?>
			</div> <!-- template -->
		</div> <!-- container -->
	<!-- JQuery required by Bootstrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    </body>
</html>
