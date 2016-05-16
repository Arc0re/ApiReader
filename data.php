<?php 

require 'bdd.php';

require 'vendor/autoload.php';

// using namespace...
use PicoFeed\Reader\Reader;


/*
====================
StoreItems
 Efface les items déja contenus dans la bdd et stocke les nouveaux
====================
*/
function StoreItems( $itemsArray ) {
	// Object global de la bdd (merci PHP)
	global $bdd;
	
	// On vide la table du contenu précédent:
	$bdd->query( 'TRUNCATE data' );
	
	if ( !empty( $itemsArray ) ) {
		$request = $bdd->prepare( 'INSERT INTO data(title, date, url, content, author) VALUES(:title, :date, :url, :content, :author)' );
		for ( $i = 0; $i < sizeof( $itemsArray ); $i++ ) {
			try {
				$request->execute( array( 
					'title'		=> $itemsArray[$i]->getTitle(),
					'date'		=> $itemsArray[$i]->getDate()->format( 'Y-m-d H:i:s' ),
					'url'		=> $itemsArray[$i]->getUrl(),
					'content'	=> $itemsArray[$i]->getContent(),
					'author'	=> $itemsArray[$i]->getAuthor()
				) );
			} catch ( Exception $e ) {
				die( 'Impossible d\'enregister en db: ' . $e->getMessage() );
			}
		}	
	} else {
		echo "Pas d'objets à enregister.";
	}
}

/*
====================
DisplayFeed
 Affiche le flux RSS/Atom etc.
====================
*/
function DisplayFeed( $itemArray ) {
	global $bdd;
	$response = $bdd->query( 'SELECT * FROM data' );
	
	while ( $data = $response->fetch() ) {
        echo "<div class=\"jumbotron\">";   
		echo "<h2>" . $data['title'] .  "</h2>";
		echo "<i><small>" . $data['date'] . "</small></i><span> | </span>";
		echo " <a href=\"" . $data['url'] . "\" target=\"_blank\">Lien vers l'article</a> <br />";
        echo "<p class=\"lead\">" . $data['content'] . "</p>";
        // N'affiche les auteurs que si il y en a (Le Monde n'en a pas, par ex) :
        if ( strip_tags( $data['author'] ) != null ) {
            echo "<p>Auteur : <mark>" . $data['author'] . "</mark></p>";
        }
        echo "</div> <!-- Fin jumbotron -->";
	}
}

/*
====================
GetData
 Télécharge les flux, les stocke en bdd et les affiche
====================
*/
function GetData( $feedUrl ) {
    try {
        $reader = new Reader();
        $source = $reader->download( $feedUrl );
        $parser = $reader->getParser( $source->getUrl(), $source->getContent(), $source->getEncoding() );
        $feed = $parser->execute();

        // Affiche les infos du flux
		echo "<div class=\"feed_info page-header\"><p><strong>Flux : </strong><a href=\"" . $feed->getId() . "\" target=\"_blank\">" . $feed->getDescription() . "</a></p></div>";

        // Récuperer l'array d'items
        $items = $feed->getItems();
		
		// On les stocke dans la db
		StoreItems( $items );
		
        DisplayFeed( $items );

    } catch ( Exception $exception ) {
        echo "<h1>ERROR: L'URL est incorrecte !</h1>";
        echo $exception;
    }
}
