/*  This file is part of CentreonDiscovery.
 *
 *	 CentreonDiscovery is developped with GPL Licence 3.0 :
 *	 Developped by : Jonathan Teste - Cedric Dupre
 *	 Modified by : Fran�ois Coust�
 *   
 */


/*
 * DATABASE : Centreon2
 * TABLE : topology
 *	
 *	Suppression des pages du module Centreon Discovery
 *
 */
DELETE FROM `topology` WHERE `topology_page` = '612';
DELETE FROM `topology` WHERE `topology_page` = '61201';
DELETE FROM `topology` WHERE `topology_page` = '61202';
DELETE FROM `topology` WHERE `topology_page` = '61203';
DELETE FROM `topology` WHERE `topology_page` = '61204';
DELETE FROM `topology` WHERE `topology_page` = '61205';
/*
 * DATABASE : Centreon
 * TABLE : mod_discovery_*
 *	
 *	Suppression des tables utiles au fonctionnement du module
 *
 */

/*
 * DATABASE : Centreon
 * TABLE : mod_discovery_rangeip
 *	
 * Suppression de la table mod_discovery_rangeip
 *
 */
DROP TABLE `mod_discovery_rangeip`;


/*
 * DATABASE : Centreon
 * TABLE : mod_discovery_results
 *	
 * Suppression de la table mod_discovery_results
 *
 */
DROP TABLE `mod_discovery_results`;


/*
 * DATABASE : Centreon
 * TABLE : mod_discovery_template_os_relation
 *	
 * Suppression de la table mod_discovery_template_os_relation
 *
 */
DROP TABLE `mod_discovery_template_os_relation`;
