/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/* Core Revision: 6552 */

/*Data for the table `map_template` */

insert  into `map_template`(`entry`,`visibility`,`pathfinding`,`lineofsight`) values
(0,80,1,6),
(1,80,1,6),
(13,130,1,6),
(25,130,1,6),
(29,130,1,6),
(30,170,1,6),
(33,130,1,6),
(34,130,1,6),
(36,130,1,6),
(43,130,1,6),
(47,130,1,6),
(48,130,1,6),
(70,130,1,6),
(90,130,1,6),
(109,130,1,6),
(129,130,1,6),
(169,130,1,6),
(189,130,1,6),
(209,130,1,6),
(229,130,1,6),
(230,130,1,6),
(249,130,1,6),
(269,130,1,6),
(289,130,1,6),
(309,130,1,6),
(329,130,1,6),
(349,130,1,6),
(369,130,1,6),
(389,130,1,6),
(409,130,1,6),
(429,130,1,6),
(449,130,1,6),
(450,130,1,6),
(451,130,1,6),
(469,130,1,6),
(489,170,1,6),
(509,130,1,6),
(529,170,1,6),
(530,80,1,6),
(531,130,1,6),
(532,130,3,6),
(533,130,1,6),
(534,175,3,6),
(540,130,2,6),
(542,130,2,6),
(543,130,2,6),
(544,130,1,6),
(545,130,2,6),
(546,130,2,6),
(547,130,2,6),
(548,130,3,6),
(550,175,3,6),
(552,130,2,6),
(553,130,2,6),
(554,130,2,6),
(555,130,2,6),
(556,130,2,6),
(557,130,2,6),
(558,130,2,6),
(559,200,6,6),
(560,130,2,6),
(562,200,6,6),
(564,175,3,6),
(565,130,3,6),
(566,170,2,6),
(568,130,3,6),
(572,200,6,6),
(580,130,3,6),
(585,130,2,6),
(598,130,2,6);

/*Data for the table `opcodes_cooldown` */

insert  into `opcodes_cooldown`(`opcode`,`cooldown`) values 
('CMSG_INSPECT',1000),
('CMSG_WHOIS',1000);

/*Data for the table `spell_disabled` */

insert  into `spell_disabled`(`entry`,`disable_mask`,`comment`) values 
(1852,7,'Silenced (GM Tool) Spell bugged'),
(46642,7,'5k gold');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
