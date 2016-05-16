<?php

	try {
		$pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
		$bdd = new PDO( 'mysql:host=localhost;dbname=tp_api', 'root', 'root' );
	} catch ( Exception $e ) {
		die( 'Error: ' . $e->getMessage() );
	}
