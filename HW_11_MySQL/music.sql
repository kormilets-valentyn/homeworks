-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT 'Album title',
  `year` int(4) NOT NULL DEFAULT '1900',
  `artist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Portrait of an American Family',1994,1),(2,'Antichrist Superstar',1996,1),(3,'Mechanical Animals',1998,1),(4,'Holy Wood',2000,1),(5,'The Golden Age of Grotesque',2003,1),(6,'Eat Me, Drink Me',2007,1),(7,'The High End of Low',2009,1),(8,'Born Villain',2012,1),(9,'The Pale Emperor',2015,1),(10,'Heaven Upside Down',2017,1),(11,'Bleach',1989,2),(12,'Nevermind',1991,2),(13,'In Utero',1993,2),(14,'Old Friends from Young Years',1997,3),(15,'Infest',2000,3),(16,'Lovehatetragedy',2000,3),(17,'Getting Away with Murder',2004,3),(18,'The Paramour Sessions',2006,3),(19,'Metamorphosis',2009,3),(20,'The Connection',2012,3),(21,'F.E.A.R.',2015,3),(22,'Crooked Teeth',2017,3),(23,'Who Do You Trust?',2019,3),(24,'Experience',1992,4),(25,'Music for the Jilted Generation',1994,4),(26,'The Fat of the Land',1997,4),(27,'Always Outnumbered, Never Outgunned',2004,4),(28,'Queen',1973,5),(29,'Queen II',1974,5),(30,'Sheer Heart Attack',1974,5),(31,'Innuendo',1991,5),(32,'Made in Heaven',1995,5),(33,'Herzeleid',1995,6),(34,'Sehnsucht',1997,6),(35,'Mutter',2001,6),(36,'Rosenrot',2005,6),(37,'The Red Hot Chili Peppers',1984,7),(38,'Im with You',2011,7),(39,'Californication',1999,7),(40,'Sysytem of a Down',1998,8),(41,'Toxicity',2001,8),(42,'Hypnotize',2005,8),(43,'Das Monster...',2008,9),(44,'Project Herz',2012,9),(45,'Goldkinder',2013,9),(46,'Outlawed',2011,10),(47,'About That Life',2013,10),(48,'Eaten Back to Life',1990,11),(49,'Butchered at Birth',1991,11),(50,'The Bleeding',1994,11),(51,'Vile',1996,11);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Marilyn Manson'),(2,'Nirvana'),(3,'Papa Roach'),(4,'The Prodigy'),(5,'Queen'),(6,'Rammstein'),(7,'Red Hot Chili Peppers'),(8,'System Of A Down'),(9,'We Butter the Bread With Butter'),(10,'Attila'),(11,'Cannibal Corpse');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connect`
--

DROP TABLE IF EXISTS `connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connect` (
  `id_a` int(11) DEFAULT NULL,
  `id_g` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connect`
--

LOCK TABLES `connect` WRITE;
/*!40000 ALTER TABLE `connect` DISABLE KEYS */;
INSERT INTO `connect` VALUES (1,2),(1,3),(2,1),(3,5),(3,1),(3,2),(4,4),(5,5),(6,1),(6,2),(7,3),(8,1),(8,5),(9,2),(10,1),(10,4),(11,1),(12,2),(13,3),(14,4),(15,1),(15,2),(16,5),(17,4),(18,5),(19,5),(20,1),(21,1),(22,2),(22,3),(23,5);
/*!40000 ALTER TABLE `connect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'punk'),(2,'glam'),(3,'metalcore'),(4,'indusrtial'),(5,'power matal');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `song` varchar(100) NOT NULL DEFAULT 'Song title',
  `album_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=632 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Prelude (The Family Trip)',1),(2,'Cake and Sodomy',1),(3,'Lunchbox',1),(4,'Organ Grinder',1),(5,'Cyclops',1),(6,'Dope Hat',1),(7,'Get Your Gunn',1),(8,'Wrapped in Plastic',1),(9,'Dogma',1),(10,'Sweet Tooth',1),(11,'Snake Eyes and Sissies',1),(12,'My Monkey',1),(13,'Misery Machine',1),(14,'Irresponsible hate anthem',2),(15,'The beautiful people',2),(16,'Dried up, tied and dead to the world',2),(17,'Tourniquet',2),(18,'Little Horn',2),(19,'Cryptorchid',2),(20,'Deformography',2),(21,'Wormboy',2),(22,'Mister Superstar',2),(23,'Angel with the scabbed wings',2),(24,'Kinderfeld',2),(25,'Antichrist superstar',2),(26,'1996',2),(27,'Minute of decay',2),(28,'The reflecting God',2),(29,'Man that you fear',2),(30,'Track 99',2),(31,'Great Big White World',3),(32,'The Dope Show',3),(33,'Mechanical Animals',3),(34,'Rock Is Dead',3),(35,'Disassociative',3),(36,'The Speed of Pain',3),(37,'Posthuman',3),(38,'I Want to Disappear',3),(39,'I Don\'t Like the Drugs (But the Drugs Like Me)',3),(40,'New Model No. 15',3),(41,'User Friendly',3),(42,'Fundamentally Loathsome',3),(43,'The Last Day on Earth',3),(44,'Coma White',3),(45,'Untitled',3),(46,'GodEatGod',4),(47,'The love song',4),(48,'The fight song',4),(49,'Disposable teens',4),(50,'Target audience (narcissus narcosis)',4),(51,'“President dead”',4),(52,'In the shadow of the valley of death',4),(53,'Cruci-fiction in space',4),(54,'A place in the dirt',4),(55,'The nobodies',4),(56,'The death song',4),(57,'Lamb of God',4),(58,'Born again',4),(59,'Burning flag',4),(60,'Coma black',4),(61,'Valentine\'s Day',4),(62,'The fall of Adam',4),(63,'King kill 33',4),(64,'Count to six and die',4),(65,'Thaeter',5),(66,'This Is The New Shit',5),(67,'mOBSCENE',5),(68,'Doll-Dagga Buzz-Buzz Ziggety-Zag',5),(69,'Use Your Fist And Not Your Mouth',5),(70,'The Golden Age Of Grotesque',5),(71,'(S)aint',5),(72,'Ka-Boom Ka-Boom',5),(73,'Slutgarden',5),(74,'Spade',5),(75,'Para-Noir',5),(76,'The Bright Young Things',5),(77,'Better Of Two Evils',5),(78,'Vodevil',5),(79,'Obsequy ( The Death Of Art )',5),(80,'Tainted Love',5),(81,'If I Was Your Vampire',6),(82,'Putting Holes in Happiness',6),(83,'The Red Carpet Grave',6),(84,'They Said That Hell\'s Not Hot',6),(85,'Just a Car Crash Away',6),(86,'Heart-Shaped Glasses (When the Heart Guides the Hand)',6),(87,'Evidence',6),(88,'Are You the Rabbit?',6),(89,'Mutilation Is the Most Sincere Form of Flattery',6),(90,'You and Me and the Devil Makes 3',6),(91,'Eat Me, Drink Me',6),(92,'Devour',7),(93,'Pretty as a',7),(94,'Leave a Scar',7),(95,'Four Rusted Horses',7),(96,'Arma-Goddamn-Motherfuckin-Geddon',7),(97,'Blank and White',7),(98,'Running to the Edge of the World',7),(99,'I Want to Kill You Like They Do in the Movies',7),(100,'WOW',7),(101,'Wight Spider',7),(102,'Unkillable Monster',7),(103,'We\'re from America',7),(104,'I Have to Look Up Just to See Hell',7),(105,'Into the Fire',7),(106,'15',7),(107,'Hey, Cruel World…',8),(108,'No Reflection',8),(109,'Pistol Whipped',8),(110,'Overneath the Path of Misery',8),(111,'Slo-Mo-Tion',8),(112,'The Gardener',8),(113,'The Flowers of Evil',8),(114,'Children of Cain',8),(115,'Disengaged',8),(116,'Lay Down Your Goddamn Arms',8),(117,'Murderers Are Getting Prettier Every Day',8),(118,'Born Villain',8),(119,'Breaking the Same Old Ground',8),(120,'Killing Strangers',9),(121,'Deep Six',9),(122,'Third Day of a Seven Day Binge',9),(123,'The Mephistopheles of Los Angeles',9),(124,'Warship My Wreck',9),(125,'Slave Only Dreams to be King',9),(126,'The Devil Beneath My Feet',9),(127,'Birds of Hell Awaiting',9),(128,'Cupid Carries a Gun',9),(129,'Odds of Even',9),(130,'Revelation #12',10),(131,'Tattooed in Reverse',10),(132,'We Know Where You Fucking Live ',10),(133,'Say10 ',10),(134,'Kill4Me  ',10),(135,'Saturnalia',10),(136,'Jesus Crisis',10),(137,'Blood Honey',10),(138,'Heaven Upside Down',10),(139,'Threats of Romance',10),(140,'Blew',11),(141,'Floyd the Barber',11),(142,'About a Girl',11),(143,'School',11),(144,'Love Buzz ',11),(145,'Paper Cuts',11),(146,'Negative Creep',11),(147,'Scoff',11),(148,'Swap Meet',11),(149,'Mr. Moustache',11),(150,'Sifting',11),(151,'Smells Like Teen Spirit',12),(152,'In Bloom',12),(153,'Come as You Are',12),(154,'Breed',12),(155,'Lithium',12),(156,'Polly',12),(157,'Territorial Pissings',12),(158,'Drain You',12),(159,'Lounge Act',12),(160,'Stay Away',12),(161,'On a Plain',12),(162,'Something in the Way',12),(163,'Endless, Nameless',12),(164,'Serve the Servants',13),(165,'Scentless Apprentice',13),(166,'Heart-Shaped Box',13),(167,'Rape Me',13),(168,'Frances Farmer Will Have Her Revenge on Seattle',13),(169,'Dumb',13),(170,'Very Ape',13),(171,'Milk It',13),(172,'Pennyroyal Tea',13),(173,'Radio Friendly Unit Shifter',13),(174,'tourette’s',13),(175,'All Apologies',13),(176,'Intro',14),(177,'Orange Drive Palms',14),(178,'Liquid Diet',14),(179,'Grrbrr',14),(180,'iSEDuFucknDie',14),(181,'DIRTYcutFREAK',14),(182,'Living Room',14),(183,'829',14),(184,'Peewagon',14),(185,'Hedake',14),(186,'Shut Up N Die (Reprise)',14),(187,'Thanx',14),(188,'Unlisted',14),(189,'Infest',15),(190,'Last Resort',15),(191,'Broken Home',15),(192,'Dead Cell',15),(193,'Between Angels and Insects',15),(194,'Blood Brothers',15),(195,'Revenge',15),(196,'Snakes',15),(197,'Never Enough',15),(198,'Binge',15),(199,'Thrown Away',15),(200,'M-80 (Explosive Energy Movement)',16),(201,'Life Is a Bullet',16),(202,'Time and Time Again',16),(203,'Walking Thru Barbed Wire',16),(204,'Decompression Period',16),(205,'Born with Nothing, Die with Everything',16),(206,'She Loves Me Not',16),(207,'Singular Indestructible Droid',16),(208,'Black Clouds',16),(209,'Code of Energy',16),(210,'Lovehatetragedy',16),(211,'Blood (Empty Promises)',17),(212,'Not Listening',17),(213,'Stop Looking Start Seeing',17),(214,'Take Me',17),(215,'Getting Away with Murder',17),(216,'Be Free',17),(217,'Done with You',17),(218,'Scars',17),(219,'Sometimes',17),(220,'Blanket of Fear',17),(221,'Tyranny of Normality',17),(222,'Do or Die',17),(223,'…To Be Loved',18),(224,'Alive (N’ Out of Control)',18),(225,'Crash',18),(226,'The World Around You',18),(227,'Forever',18),(228,'I Devise My Own Demise',18),(229,'Time Is Running Out',18),(230,'What Do You Do?',18),(231,'My Heart Is a Fist',18),(232,'No More Secrets',18),(233,'Reckless',18),(234,'The Fire',18),(235,'Roses on My Grave',18),(236,'The Addict',18),(237,'Days of War',19),(238,'Change or Die',19),(239,'Hollywood Whore',19),(240,'I Almost Told You That I Loved You',19),(241,'Lifeline',19),(242,'Had Enough',19),(243,'Live This Down',19),(244,'March Out of the Darkness',19),(245,'Into the Light',19),(246,'Carry Me',19),(247,'Nights of Love',19),(248,'State of Emergency',19),(249,'Lifeline',19),(250,'Engage',20),(251,'Still Swingin',20),(252,'Where Did the Angels Go?',20),(253,'Silence is the Enemy',20),(254,'Before I Die',20),(255,'Wish You Never Met Me',20),(256,'Give Me Back My Life',20),(257,'Breathe You In',20),(258,'Leader of the Broken Hearts',20),(259,'Not That Beautiful',20),(260,'Walking Dead',20),(261,'Won\'t Let Up',20),(262,'As Far as I Remember',20),(263,'Face Everything and Rise',21),(264,'Skeletons',21),(265,'Broken as Me',21),(266,'Falling Apart',21),(267,'Love Me Till It Hurts',21),(268,'Never Have to Say Goodbye',21),(269,'Gravity',21),(270,'War Over Me',21),(271,'Devil',21),(272,'Warriors',21),(273,'Break the Fall',22),(274,'Crooked Teeth',22),(275,'My Medication',22),(276,'Born for Greatness',22),(277,'American Dreams',22),(278,'Periscope ',22),(279,'Help',22),(280,'Sunrise Trailer Park',22),(281,'Traumatic',22),(282,'None of the Above',22),(283,'The Ending',23),(284,'Renegade Music',23),(285,'Not the Only One',23),(286,'Who Do You Trust?',23),(287,'Elevate',23),(288,'Come Around',23),(289,'Feel Like Home',23),(290,'Problems',23),(291,'Top of the World',23),(292,'I Suffer Well',23),(293,'Maniac',23),(294,'Better Than Life',23),(295,'Jericho',24),(296,'Music Reach ',24),(297,'Wind It Up',24),(298,'Your Love (Remix)',24),(299,'Hyperspeed ',24),(300,'Charly (Trip into Drum and Bass Version)',24),(301,'Out of Space',24),(302,'Everybody in the Place (155 and Rising)',24),(303,'Weather Experience',24),(304,'Fire (Sunrise Version)',24),(305,'Ruff in the Jungle Bizness',24),(306,'Death of the Prodigy Dancers (Live)',24),(307,'Intro',25),(308,'Break & Enter',25),(309,'Their Law',25),(310,'Full Throttle',25),(311,'Voodoo People',25),(312,'Speedway (Theme From Fastlane)',25),(313,'The Heat (The Energy)',25),(314,'Poison',25),(315,'No Good (Start the Dance)',25),(316,'One Love',25),(317,'The Narcotic Suite: 3 Kilos',25),(318,'The Narcotic Suite: Skylined',25),(319,'The Narcotic Suite: Claustrophobic Sting',25),(320,'Smack My Bitch Up',26),(321,'Breathe',26),(322,'Diesel Power',26),(323,'Funky Shit',26),(324,'Serial Thrilla',26),(325,'Mindfields',26),(326,'Narayan',26),(327,'Firestarter',26),(328,'Climbatize',26),(329,'Fuel My Fire',26),(330,'Spitfire',27),(331,'Girls',27),(332,'Memphis Bells',27),(333,'Get Up Get Off',27),(334,'Hotride',27),(335,'Wake Up Call',27),(336,'Action Radar',27),(337,'Medusa’s Path',27),(338,'Phoenix',27),(339,'You’ll Be Under My Wheels',27),(340,'The Way It Is',27),(341,'Shoot Down',27),(342,'More Girls ',27),(343,'Keep Yourself Alive',28),(344,'Doing All Right',28),(345,'Great King Rat',28),(346,'My Fairy King',28),(347,'Liar',28),(348,'The Night Comes Down',28),(349,'Modern Times Rock ’n’ Roll',28),(350,'Son and Daughter',28),(351,'Jesus',28),(352,'Seven Seas of Rhye',28),(353,'Procession',29),(354,'Father to Son',29),(355,'Ogre Battle',29),(356,'White Queen',29),(357,'Doin\' All Right',29),(358,'Son and Daughter',29),(359,'Keep Yourself Alive',29),(360,'Liar',29),(361,'Jailhouse Rock',29),(362,'Shake, Rattle and Roll',29),(363,'Stupid Cupid',29),(364,'Be-Bop-A-Lula',29),(365,'Jailhouse Rock (Reprise)',29),(366,'Big Spender',29),(367,'Modern Times Rock’n’roll',29),(368,'Brighton Rock',30),(369,'Killer Queen',30),(370,'Tenement Funster ',30),(371,'Flick of the Wrist ',30),(372,'Lily of the Valley ',30),(373,'Now I’m Here ',30),(374,'In the Lap of the Gods ',30),(375,'Stone Cold Crazy ',30),(376,'Dear Friends ',30),(377,'Misfire ',30),(378,'Bring Back That Leroy Brown',30),(379,'She Makes Me (Stormtrooper in Stilettos) ',30),(380,'In The Lap of the Gods... Revisited ',30),(381,'Innuendo',31),(382,'I\'m Going Slightly Mad',31),(383,'Headlong',31),(384,'I Can\'t Live with You',31),(385,'Don\'t Try So Hard',31),(386,'Ride the Wild Wind',31),(387,'All God\'s People',31),(388,'These Are the Days of Our Lives',31),(389,'Delilah',31),(390,'The Hitman',31),(391,'Bijou',31),(392,'The Show Must Go On',31),(393,'It’s a Beautiful Day',32),(394,'Made in Heaven',32),(395,'Let Me Live',32),(396,'Mother Love ',32),(397,'My Life Has Been Saved',32),(398,'I Was Born to Love You',32),(399,'Heaven for Everyone ',32),(400,'Too Much Love Will Kill You ',32),(401,'You Don\'t Fool Me ',32),(402,'A Winter\'s Tale ',32),(403,'It’s a Beautiful Day (Reprise) ',32),(404,'Yeah ',32),(405,'Track 13 ',32),(406,'Wollt ihr das Bett in Flammen sehen?',33),(407,'Der Meister',33),(408,'Weisses Fleisch',33),(409,'Asche zu Asche',33),(410,'Seemann',33),(411,'Du riechst so gut',33),(412,'Das alte Leid',33),(413,'Heirate mich',33),(414,'Herzeleid',33),(415,'Laichzeit',33),(416,'Rammstein',33),(417,'Sehnsucht',34),(418,'Engel',34),(419,'Tier',34),(420,'Bestrafe mich',34),(421,'Du hast',34),(422,'Bück dich',34),(423,'Spiel mit mir',34),(424,'Klavier',34),(425,'Alter Mann',34),(426,'Eifersucht',34),(427,'Küss mich (Fellfrosch)',34),(428,'Mein Herz Brennt',35),(429,'Links 2 3 4',35),(430,'Sonne',35),(431,'Ich will',35),(432,'Feuer frei!',35),(433,'Mutter',35),(434,'Spieluhr',35),(435,'Zwitter',35),(436,'Rein raus',35),(437,'Adios',35),(438,'Nebel',35),(439,'Benzin',36),(440,'Mann gegen Mann',36),(441,'Rosenrot',36),(442,'Spring',36),(443,'Wo bist du',36),(444,'Stirb nicht vor mir',36),(445,'Zerstören',36),(446,'Hilf mir',36),(447,'Te quiero puta!',36),(448,'Feuer und Wasser',36),(449,'Ein Lied',36),(450,'True Men Don’t Kill Coyotes',37),(451,'Baby Appeal',37),(452,'Buckle Down',37),(453,'Get Up And Jump',37),(454,'Why Don’t You Love Me',37),(455,'Green Heaven',37),(456,'Mommy, Where’s Daddy',37),(457,'Out In L.A.',37),(458,'Police Helicopter',37),(459,'You Always Sing The Same',37),(460,'Grand Puppy du Plenty',37),(461,'Monarchy of Roses',38),(462,'Factory of Faith',38),(463,'Brendan\'s Death Song',38),(464,'Ethiopia',38),(465,'Annie Wants a Baby',38),(466,'Look Around',38),(467,'The Adventures of Rain Dance Maggie',38),(468,'Did I Let You Know',38),(469,'Goodbye Hooray',38),(470,'Happiness Loves Company',38),(471,'Police Station',38),(472,'Even You Brutus?',38),(473,'Meet Me at the Corner',38),(474,'Dance, Dance, Dance',38),(475,'Around the World',39),(476,'Parallel Universe',39),(477,'Scar Tissue',39),(478,'Otherside',39),(479,'Get on Top',39),(480,'Californication',39),(481,'Easily',39),(482,'Porcelain',39),(483,'Emit Remmus',39),(484,'I Like Dirt',39),(485,'This Velvet Glove',39),(486,'Savior',39),(487,'Purple Stain',39),(488,'Right on Time',39),(489,'Road Trippin\'',39),(490,'Suite-Pee',40),(491,'Know',40),(492,'Sugar',40),(493,'Suggestions',40),(494,'Spiders',40),(495,'Ddevil',40),(496,'Soil',40),(497,'War?',40),(498,'Mind',40),(499,'Peephole',40),(500,'CUBErt',40),(501,'Darts',40),(502,'P.L.U.C.K.',40),(503,'Prison Song',41),(504,'Needles',41),(505,'Deer Dance',41),(506,'Jet Pilot',41),(507,'X',41),(508,'Chop Suey!',41),(509,'Bounce',41),(510,'Forest',41),(511,'ATWA',41),(512,'Science',41),(513,'Shimmy',41),(514,'Toxicity',41),(515,'Psycho',41),(516,'Aerials',41),(517,'Arto',41),(518,'Attack',42),(519,'Dreaming',42),(520,'Kill Rock\'N Roll',42),(521,'Hypnotize',42),(522,'Stealing Society',42),(523,'Tentative',42),(524,'U-Fig',42),(525,'Holy Mountains',42),(526,'Vicinity Of Obscenity',42),(527,'She\'s Like Heroin',42),(528,'Lonely Day',42),(529,'Soldier Side',42),(530,'Intro',43),(531,'Schlaf, Kindlein, Schlaf',43),(532,'Willst Du Mit Mir Gehn?',43),(533,'Das Monster aus dem Schrank',43),(534,'Breekachu',43),(535,'Hanschen Klein',43),(536,'Terminator und Popeye',43),(537,'Backe, Backe Kuchen',43),(538,'World of Warcraft',43),(539,'Fuchs Du Hast die Gans Gestohlen',43),(540,'Alle Meine Entchen',43),(541,'I Shot the Sheriff',43),(542,'Hansel und Gratel',43),(543,'Der Kuckuck und der Esel',43),(544,'Extrem',43),(545,'Herz Intro (Intro)',44),(546,'1000 Volt',44),(547,'Mayday Mayday',44),(548,'USA',44),(549,'Western Beta',44),(550,'Euphorie',44),(551,'Soldat',44),(552,'Supernova (Outro)',44),(553,'Alles Was Ich Will',45),(554,'Meine Brille',45),(555,'Pyroman & Astronaut',45),(556,'Ohne Herz',45),(557,'Super Heis Ins Trommelfell (S.H.I.T.)',45),(558,'Viva Mariposa',45),(559,'Fall',45),(560,'Mayday Mayday',45),(561,'Makellos',45),(562,'Das Uhrwerk',45),(563,'Krieg Aus Gold',45),(564,'Psycho',45),(565,'Kind Im Brunnen',45),(566,'Outlawed',46),(567,'Light Me Up',46),(568,'Nothing Left to Say',46),(569,'Another Round',46),(570,'Nasty Mouth',46),(571,'Smokeout',46),(572,'Holler at Ya Boy',46),(573,'Sex, Drugs & Violence',46),(574,'White Lightning',46),(575,'Payback',46),(576,'Middle Fingers Up',47),(577,'Hellraiser',47),(578,'Rageaholics',47),(579,'Backtalk',47),(580,'Leave a Message',47),(581,'About That Life',47),(582,'Thug Life',47),(583,'Break Shit',47),(584,'Gimmicks and Lie$',47),(585,'Callout',47),(586,'Unforgivable',47),(587,'Shots For The Boys',47),(588,'Party with the Devil (Re-Record)',47),(589,'The New Kings',47),(590,'Shredded Humans',48),(591,'Edible Autopsy',48),(592,'Put Them to Death',48),(593,'Mangled',48),(594,'Scattered Remains, Splattered Brains',48),(595,'Born in a Casket',48),(596,'Rotting Head',48),(597,'The Undead Will Feast',48),(598,'Bloody Chunks',48),(599,'A Skull Full of Maggots',48),(600,'Buried in the Backyard',48),(601,'Meat Hook Sodomy',49),(602,'Gutted',49),(603,'Living Dissection',49),(604,'Under the Rotted Flesh',49),(605,'Covered with Sores',49),(606,'Vomit the Soul ',49),(607,'Butchered at Birth',49),(608,'Rancid Amputation',49),(609,'Innards Decay',49),(610,'Covered with Sores ',49),(611,'Staring Through the Eyes of the Dead',50),(612,'Fucked with a Knife',50),(613,'Stripped, Raped and Strangled',50),(614,'Pulverized',50),(615,'Return to Flesh',50),(616,'The Pick-Axe Murders',50),(617,'She Was Asking for It',50),(618,'The Bleeding',50),(619,'Force Fed Broken Glass',50),(620,'An Experiment in Homicide',50),(621,'Devoured by Vermin',51),(622,'Mummified in Barbed Wire',51),(623,'Perverse Suffering',51),(624,'Disfigured',51),(625,'Bloodlands',51),(626,'Puncture Wound Massacre',51),(627,'Relentless Beating',51),(628,'Absolute Hatred',51),(629,'Eaten from Inside',51),(630,'Orgasm Through Torture',51),(631,'Monolith',51);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-18 23:56:07
