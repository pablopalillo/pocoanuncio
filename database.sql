-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.27-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla pocoanuncio.articles_article
CREATE TABLE IF NOT EXISTS `articles_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(35) NOT NULL,
  `description` longtext,
  `category_id` int(11) NOT NULL,
  `price` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_article_category_id_633dad2b_fk_articles_category_id` (`category_id`),
  CONSTRAINT `articles_article_category_id_633dad2b_fk_articles_category_id` FOREIGN KEY (`category_id`) REFERENCES `articles_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pocoanuncio.articles_article: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `articles_article` DISABLE KEYS */;
INSERT INTO `articles_article` (`id`, `title`, `description`, `category_id`, `price`) VALUES
	(1, 'Renaul 6', 'Renaul 6 en excelente estado', 287, '3500'),
	(2, 'se vende Mazda', 'se vende mazda del 98 ideal para chivero', 287, '1400'),
	(3, 'Honda moto', 'Moto moto ideal para ser moto taxi o domicilio', 288, '400'),
	(4, 'Yamaha 222', 'Moto yamaha con mucho recorrido', 288, '1300');
/*!40000 ALTER TABLE `articles_article` ENABLE KEYS */;

-- Volcando estructura para tabla pocoanuncio.articles_category
CREATE TABLE IF NOT EXISTS `articles_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `status` varchar(1) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `slug` varchar(400) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_category_subcategory_id_682262ec_fk_articles_` (`subcategory_id`),
  KEY `articles_category_slug_f02e70e2` (`slug`),
  CONSTRAINT `articles_category_subcategory_id_682262ec_fk_articles_` FOREIGN KEY (`subcategory_id`) REFERENCES `articles_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pocoanuncio.articles_category: ~111 rows (aproximadamente)
/*!40000 ALTER TABLE `articles_category` DISABLE KEYS */;
INSERT INTO `articles_category` (`id`, `name`, `status`, `subcategory_id`, `slug`) VALUES
	(279, 'Motor', '1', NULL, '/motor/'),
	(280, 'Inmobiliaria', '1', NULL, '/inmobiliaria/'),
	(281, 'Empleo', '1', NULL, '/ofertas-de-empleo/'),
	(282, 'Formación y libros', '1', NULL, '/formacion/'),
	(283, 'Servicios', '1', NULL, '/servicios/'),
	(284, 'Negocios', '1', NULL, '/negocios/'),
	(285, 'Informática', '1', NULL, '/informatica-segunda-mano/'),
	(286, 'Imagen y Sonido', '1', NULL, '/imagen-y-sonido/'),
	(287, 'Coches', '1', 279, '/coches-de-segunda-mano/'),
	(288, 'Motos', '1', 279, '/motos-de-segunda-mano/'),
	(289, 'Furgonetas camper', '1', 279, '/furgonetas-de-segunda-mano/camper.htm'),
	(290, 'BMW Serie 1', '1', 279, '/bmw-serie-1-de-segunda-mano/'),
	(291, 'Mercedes Clase A', '1', 279, '/mercedes-benz-clase-a-de-segunda-mano/'),
	(292, 'Porsche Cayenne', '1', 279, '/porsche-cayenne-de-segunda-mano/'),
	(293, 'Autocaravanas', '1', 279, '/autocaravanas-de-segunda-mano/'),
	(294, 'Caravanas de segunda mano', '1', 279, '/caravanas-de-segunda-mano/'),
	(295, 'Suzuki Vitara', '1', 279, '/suzuki-vitara-de-segunda-mano/'),
	(296, 'Motos 125cc', '1', 279, '/motos-de-segunda-mano/125cc.htm'),
	(297, 'Yamaha MT 125', '1', 279, '/motos-de-carretera/yamaha-mt-125.htm'),
	(298, 'Quads', '1', 279, '/quads/'),
	(299, 'Tractores', '1', 279, '/tractores-usados/'),
	(300, 'Jeep Wrangler', '1', 279, '/jeep-wrangler-de-segunda-mano/'),
	(301, 'Motos de cross', '1', 279, '/motos-de-cross/'),
	(302, 'Kawasaki Ninja', '1', 279, '/motos-de-carretera/kawasaki-ninja.htm'),
	(303, 'Casas en alquiler', '1', 280, '/alquiler-de-casas/'),
	(304, 'Pisos en alquiler', '1', 280, '/alquiler-de-pisos/'),
	(305, 'Pisos en venta', '1', 280, '/venta-de-pisos/'),
	(306, 'Chalets', '1', 280, '/chalets/'),
	(307, 'Lofts', '1', 280, '/lofts/'),
	(308, 'Apartamentos primera lí­nea de', '1', 280, '/venta-de-apartamentos/primera-linea-playa.htm'),
	(309, 'Casas prefabricadas', '1', 280, '/casas-prefabricadas/'),
	(310, 'Fincas rústicas', '1', 280, '/fincas-rusticas/'),
	(311, 'Compartir piso', '1', 280, '/pisos-compartidos/'),
	(312, 'Casas en Costa Brava', '1', 280, '/venta-de-casas/costa-brava.htm'),
	(313, 'Locales en alquiler', '1', 280, '/alquiler-de-locales-comerciales/'),
	(314, 'Naves industriales', '1', 280, '/naves-industriales/'),
	(315, 'Trasteros', '1', 280, '/trasteros/'),
	(316, 'Chalets con piscina', '1', 280, '/venta-de-chalets/piscina.htm'),
	(317, 'Teletrabajo', '1', 281, '/ofertas-de-empleo/teletrabajo.htm'),
	(318, 'Comerciales', '1', 281, '/comerciales/'),
	(319, 'Conductores', '1', 281, '/ofertas-de-empleo/conductor.htm'),
	(320, 'Administrativos', '1', 281, '/administrativos/'),
	(321, 'Recepcionistas', '1', 281, '/recepcionistas/'),
	(322, 'Informáticos', '1', 281, '/informaticos/'),
	(323, 'Construcción', '1', 281, '/construccion/'),
	(324, 'Cajeros de supermercado', '1', 281, '/ofertas-de-empleo/cajera-supermercado.htm'),
	(325, 'Trabajo en construcción', '1', 281, '/construccion/'),
	(326, 'Cocineros y Camareros', '1', 281, '/cocineros-y-camareros/'),
	(327, 'Traductores', '1', 281, '/traductores/'),
	(328, 'Teleoperadores', '1', 281, '/ofertas-de-empleo/teleoperadora.htm'),
	(329, 'Libros de cocina con Thermomix', '1', 282, '/libros/thermomix.htm'),
	(330, 'Cuentos Disney', '1', 282, '/libros/cuentos-disney.htm'),
	(331, 'Libros Kika Superbruja', '1', 282, '/libros/kika-superbruja.htm'),
	(332, 'Cursos de inglés', '1', 282, '/cursos-de-ingles/'),
	(333, 'Cursos de fotografía', '1', 282, '/cursos-de-fotografia/'),
	(334, 'Autoescuelas', '1', 282, '/autoescuelas/'),
	(335, 'Escuelas de baile', '1', 282, '/escuelas-de-baile/'),
	(336, 'Libros Harry Potter', '1', 282, '/libros/harry-potter.htm'),
	(337, 'Novelas', '1', 282, '/novelas/'),
	(338, 'Libros', '1', 282, '/libros/'),
	(339, 'Cómics Superlópez', '1', 282, '/comics/superlopez.htm'),
	(340, 'Traductores', '1', 283, '/traducciones/'),
	(341, 'Limpieza del hogar', '1', 283, '/empresas-de-limpieza/'),
	(342, 'Fontaneros', '1', 283, '/fontaneros/'),
	(343, 'Mudanzas', '1', 283, '/mudanzas/'),
	(344, 'Guardamuebles', '1', 283, '/guardamuebles/'),
	(345, 'Instalación aire acondicionado', '1', 283, '/climatizacion/aire-acondicionado.htm'),
	(346, 'Electricistas', '1', 283, '/electricistas/'),
	(347, 'Gimnasios', '1', 283, '/gimnasios/'),
	(348, 'Cerrajeros 24 horas', '1', 283, '/cerrajeros/cerrajeros-24-horas.htm'),
	(349, 'Reformas', '1', 283, '/reformas/'),
	(350, 'Carpinteros', '1', 283, '/carpinteros/'),
	(351, 'Belleza y cosmética', '1', 283, '/belleza/'),
	(352, 'Clases particulares', '1', 283, '/clases-particulares/'),
	(353, 'Traspasos', '1', 284, '/traspasos/'),
	(354, 'Franquicias', '1', 284, '/franquicias/'),
	(355, 'Mayoristas', '1', 284, '/mayoristas/'),
	(356, 'Financiación', '1', 284, '/financiacion/'),
	(357, 'Abogados', '1', 284, '/abogados/'),
	(358, 'Oportunidades de negocio', '1', 284, '/oportunidades-de-negocio/'),
	(359, 'Préstamos', '1', 284, '/prestamos/'),
	(360, 'Alquiler de negocios', '1', 284, '/alquiler-de-negocio/'),
	(361, 'Venta de empresas', '1', 284, '/venta-de-empresas/'),
	(362, 'Mobiliario oficina', '1', 284, '/mobiliario-de-oficina/'),
	(363, 'iPad Pro', '1', 285, '/tablets/ipad-pro.htm'),
	(364, 'Tablets BQ', '1', 285, '/tablets/bq.htm'),
	(365, 'HP Elitebook', '1', 285, '/portatiles-de-segunda-mano/hp-elitebook.htm'),
	(366, 'Macbook Pro', '1', 285, '/portatiles-de-segunda-mano/macbook-pro.htm'),
	(367, 'HP pavilion DV6', '1', 285, '/portatiles-de-segunda-mano/hp-pavilion-dv6.htm'),
	(368, 'Acer Aspire One', '1', 285, '/portatiles-de-segunda-mano/acer-aspire-one.htm'),
	(369, 'Mini portátiles', '1', 285, '/portatiles-de-segunda-mano/mini-portatil.htm'),
	(370, 'Impresoras sublimación', '1', 285, '/impresoras/impresora-sublimacion.htm'),
	(371, 'Magic Mouse', '1', 285, '/ratones-de-ordenador/magic-mouse.htm'),
	(372, 'Portátiles Toshiba', '1', 285, '/portatiles-de-segunda-mano/toshiba.htm'),
	(373, 'Alienware', '1', 285, '/portatiles-de-segunda-mano/alienware.htm'),
	(374, 'Torre de ordenador', '1', 285, '/informatica-segunda-mano/torre-ordenador.htm'),
	(375, 'Ordenadores Spectrum', '1', 285, '/ordenadores-de-segunda-mano/spectrum.htm'),
	(376, 'Micrófonos inalámbricos', '1', 286, '/microfonos/microfonos-inalambricos.htm'),
	(377, 'Nikon D3200', '1', 286, '/camaras-digitales/nikon-d3200.htm'),
	(378, 'Televisores 42\'\'', '1', 286, '/televisores/televisores-42-pulgadas.htm'),
	(379, 'GoPro Hero Black 7', '1', 286, '/imagen-y-sonido/gopro-hero-black-7.htm'),
	(380, 'Nikon D3100', '1', 286, '/camaras-digitales/nikon-d3100.htm'),
	(381, 'Proyectores Xiaomi', '1', 286, '/videoproyectores/xiaomi.htm'),
	(382, 'TV Panasonic Viera', '1', 286, '/televisores/panasonic-viera.htm'),
	(383, 'Chromecast', '1', 286, '/imagen/chromecast.htm'),
	(384, 'TV Samsung 40\'\'', '1', 286, '/televisores/samsung-40-pulgadas.htm'),
	(385, 'Decodificadores', '1', 286, '/antenas-parabolicas/decodificador.htm'),
	(386, 'Cajones flamencos', '1', 286, '/instrumentos-musicales/cajones-flamencos.htm'),
	(387, 'Pianos eléctricos', '1', 286, '/pianos/piano-electrico.htm'),
	(388, 'Guitarras flamencas', '1', 286, '/guitarras-clasicas/guitarras-flamencas.htm'),
	(389, 'Altavoces Bang Olufsen', '1', 286, '/altavoces/bang-olufsen.htm');
/*!40000 ALTER TABLE `articles_category` ENABLE KEYS */;

-- Volcando estructura para tabla pocoanuncio.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pocoanuncio.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando estructura para tabla pocoanuncio.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pocoanuncio.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla pocoanuncio.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pocoanuncio.auth_permission: ~32 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add article', 7, 'add_article'),
	(26, 'Can change article', 7, 'change_article'),
	(27, 'Can delete article', 7, 'delete_article'),
	(28, 'Can view article', 7, 'view_article'),
	(29, 'Can add category', 8, 'add_category'),
	(30, 'Can change category', 8, 'change_category'),
	(31, 'Can delete category', 8, 'delete_category'),
	(32, 'Can view category', 8, 'view_category');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando estructura para tabla pocoanuncio.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pocoanuncio.auth_user: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$260000$p4HBEwHbrpVyMSaWYGmnLX$iDeJPu1+3u3JLaFRnsKIK14Bs6OaEKK9dnpxHyyDnRA=', '2021-10-17 20:25:23.828447', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2021-10-15 23:41:05.249705');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Volcando estructura para tabla pocoanuncio.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pocoanuncio.auth_user_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Volcando estructura para tabla pocoanuncio.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pocoanuncio.auth_user_user_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla pocoanuncio.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pocoanuncio.django_admin_log: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2021-10-17 20:26:15.713471', '1', 'Renaul 6', 1, '[{"added": {}}]', 7, 1),
	(2, '2021-10-17 20:28:30.178273', '2', 'se vende Mazda', 1, '[{"added": {}}]', 7, 1),
	(3, '2021-10-17 20:29:12.033987', '3', 'Yamaha 222', 1, '[{"added": {}}]', 7, 1),
	(4, '2021-10-17 20:29:12.329282', '4', 'Yamaha 222', 1, '[{"added": {}}]', 7, 1),
	(5, '2021-10-17 20:29:52.384387', '3', 'Honda moto', 2, '[{"changed": {"fields": ["Title", "Description", "Price"]}}]', 7, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando estructura para tabla pocoanuncio.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pocoanuncio.django_content_type: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(7, 'articles', 'article'),
	(8, 'articles', 'category'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando estructura para tabla pocoanuncio.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pocoanuncio.django_migrations: ~23 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2021-10-15 23:38:49.498566'),
	(2, 'auth', '0001_initial', '2021-10-15 23:38:59.228259'),
	(3, 'admin', '0001_initial', '2021-10-15 23:39:03.417190'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2021-10-15 23:39:03.527042'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-15 23:39:03.628078'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2021-10-15 23:39:05.674007'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2021-10-15 23:39:06.693975'),
	(8, 'auth', '0003_alter_user_email_max_length', '2021-10-15 23:39:07.823132'),
	(9, 'auth', '0004_alter_user_username_opts', '2021-10-15 23:39:07.911236'),
	(10, 'auth', '0005_alter_user_last_login_null', '2021-10-15 23:39:08.740084'),
	(11, 'auth', '0006_require_contenttypes_0002', '2021-10-15 23:39:08.755453'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2021-10-15 23:39:08.840094'),
	(13, 'auth', '0008_alter_user_username_max_length', '2021-10-15 23:39:09.911965'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2021-10-15 23:39:11.601903'),
	(15, 'auth', '0010_alter_group_name_max_length', '2021-10-15 23:39:12.743221'),
	(16, 'auth', '0011_update_proxy_permissions', '2021-10-15 23:39:12.786267'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2021-10-15 23:39:14.003258'),
	(18, 'sessions', '0001_initial', '2021-10-15 23:39:14.659243'),
	(19, 'articles', '0001_initial', '2021-10-16 00:29:10.596970'),
	(20, 'articles', '0002_alter_category_subcategory', '2021-10-16 00:29:10.662974'),
	(21, 'articles', '0003_category_slug', '2021-10-16 02:40:06.810724'),
	(22, 'articles', '0004_alter_category_name', '2021-10-16 21:34:00.340779'),
	(23, 'articles', '0005_auto_20211016_2207', '2021-10-17 03:07:59.003582');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando estructura para tabla pocoanuncio.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla pocoanuncio.django_session: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('l8u3i9qobhub4sjhw0kydfk6q9orhgrl', '.eJxVjEEOwiAQRe_C2hCZwqS4dO8ZyAwMUjWQlHZlvLsh6UK3_7333yrQvpWwd1nDktRFGXX63ZjiU-oA6UH13nRsdVsX1kPRB-361pK8rof7d1Col1EjexaMIhYmPGP2ADZmjtbaGSElQYrCzgO5CUwGg0Q4p8l59o5Zfb78eThk:1mcCih:Ic-jHuP-HdGafKppfh4Qyn5JkJ3SUznB6TRXNWLrukQ', '2021-10-31 20:25:23.914629'),
	('xuyjcjcpmsnf9swr5lxjrlq26e9pv6sv', '.eJxVjEEOwiAQRe_C2hCZwqS4dO8ZyAwMUjWQlHZlvLsh6UK3_7333yrQvpWwd1nDktRFGXX63ZjiU-oA6UH13nRsdVsX1kPRB-361pK8rof7d1Col1EjexaMIhYmPGP2ADZmjtbaGSElQYrCzgO5CUwGg0Q4p8l59o5Zfb78eThk:1mbXgs:PCquesrDIFV1-gOywHdVtcRWk3Be1-3alqvgOGxiVpE', '2021-10-30 00:36:46.991262');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
