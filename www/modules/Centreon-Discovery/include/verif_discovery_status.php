<?php
	/*	
		Ce script permet de v�rifier si l'agent Discovery du poller distant est joignable ou non.
		Il sera ex�cut� toutes les 2 secondes, grace � une fonction ajax dans le fichier script.js
	*/
	
	$filepath = '/etc/centreon/centreon.conf.php';
	//$filepath = '#PATHCONFCENTREON#';

	if (file_exists($filepath)) {
		include($filepath);
		$connect = mysql_connect($conf_centreon['hostCentreon'], $conf_centreon['user'], $conf_centreon['password']) or die('Impossible de se connecter � la base de donnees'.mysql_error());
		mysql_select_db($conf_centreon['db']) or die('Impossible de trouver la base de donnees '.mysql_error());
		$sql = mysql_query('SELECT poller_status FROM mod_discovery_rangeip WHERE id='.$_POST['id'].';');
		while($data = mysql_fetch_array($sql)){
			switch($data['poller_status']){
				case 1: //Le poller est actif et joignable
					echo '<b style="color:green">&nbsp;&nbsp;UP&nbsp;&nbsp;</b>';
					break;
				case 2: //Le poller est inactif ou injoignable
					echo '<b style="color:#F91E05">&nbsp;&nbsp;DOWN&nbsp;&nbsp;</b>';
					break;
				default: //Aucune information sur le status du poller
					echo '<img style="border:none" type="image" src="./modules/Centreon-Discovery/include/images/loading.gif" title="Loading...">';
			}
		}
	} else {
		echo "Le fichier $filepath n'existe pas.";
	}

?>

