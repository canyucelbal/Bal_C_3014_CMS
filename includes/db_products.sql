-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 01, 2021 at 03:59 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_products`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gender`
--

DROP TABLE IF EXISTS `tbl_gender`;
CREATE TABLE IF NOT EXISTS `tbl_gender` (
  `gender_id` int(5) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(30) NOT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gender`
--

INSERT INTO `tbl_gender` (`gender_id`, `gender_name`) VALUES
(1, 'Man'),
(2, 'women'),
(3, 'kids');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `product_id` int(5) NOT NULL AUTO_INCREMENT,
  `product_img` varchar(50) NOT NULL,
  `product_name` varchar(75) NOT NULL,
  `product_description` varchar(1000) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_color` varchar(150) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_img`, `product_name`, `product_description`, `product_price`, `product_color`) VALUES
(1, 'w_hat1.png', 'Under Armour Women\'s Play Up Cap', 'Super-soft, smooth knit fabric for all day comfort\r\nUA Siro sweatband gives greater stretch & recovery, an ultra-soft feel & more breathable performance\r\nAdjustable webbing closure with wordmark detail\r\nEmbroidered logo\r\nImported', '30', 'BLACK'),
(2, 'w_hat2.png', 'Nike Women\'s Run Dri-FIT Featherlight Cap', 'Nike aerobill technology integrates proprietary lightweight construction with breathable, sweat-wicking fabric for enhanced comfort and reduced distraction\r\nDri-FIT technology helps you stay dry and comfortable\r\nPerforations around the cap help increase cooling\r\nA knit sweatband helps contain sweat and moisture\r\nAdjustable back strap lets you customize your fit', '30', 'BLACK'),
(3, 'w_hat3.png', 'Under Armour Women\'s Multi Hair Cap', 'Ultra-light stretch woven fabric is durable & breathable\r\nIso-Chill sweatband helps disperse body heat, making it feel cool to the touch\r\nOversized open back panel so you can still wear your hair up in a ponytail or bun\r\nElastic back closure with buckle adjust for a secure fit\r\nReflective logos', '35', 'BLACK'),
(4, 'w_hat4.png', 'Under Armour Women\'s Run Launch Cap', 'Ultra-light stretch woven fabric is durable & breathable\r\nIso-Chill sweatband helps disperse body heat, making it feel cool to the touch\r\nLaser perforations for added ventilation where you need it\r\nLow-profile, adjustable hook & loop closure to avoid hair snagging\r\nReflective logos\r\nFit & Care: UA Free Fit: Pre-curved visor & unstructured front conforms to your head for a sleek, low profile fit', '32', 'BLACK'),
(5, 'w_hat5.png', 'Columbia Women\'s Global Adventure II Straw Hat', 'Omni-Shade™ UPF 50 sun protection\r\nAdjustable chin strap', '40', 'NEUTRAL'),
(6, 'w_pants1.png', 'Under Armour Women\'s Meridian Studio Joggers', 'Tapered leg fit', '85', 'BLACK'),
(7, 'w_pants2.png', 'The North Face Women\'s Aphrodite 2.0 Pants', 'Standard straight fit\r\nExtremely durable, breathable FlashDry™-XD technology wicks moisture and speeds drying\r\n2x2 wide rib-knit waistband\r\nStretch drawcord at leg opening for cinching\r\nTonal heather stretch external drawcord\r\nTriple needle stitching for durability\r\nFront hand pockets\r\nZip pocket securely stores essentials\r\nShirring on legs\r\n17\" leg opening\r\nTonal heat transfer logo on back-right yoke', '90', 'BLACKTNF BLACK'),
(8, 'w_pants3.png', 'The North Face Women\'s Aphrodite Motion Capris Pants', 'Standard fit, tapered and straight leg\r\nUltra-comfortable herringbone fabric with four-way stretch for mobility with FlashDry™ and non-PFC DWR finish\r\nImproved tapered leg shape and contoured seaming at leg outseam\r\nEmbroidered logo on back-right yoke', '75', 'BLACK'),
(9, 'w_pants4.png', 'Diadora Women\'s Flow Pants', 'Soft and comfortable jersey with aloe finish\r\nFold over waistband for maximum comfort and movement\r\nHem with side slit and satin ribbon drawcord to customize fit', '60', 'BLACK'),
(10, 'w_pants5.png', 'Under Armour Women\'s Woven Wordmark Graphic Pants', 'Charged Cotton® Fleece has the comfort of cotton, but dries much faster\r\nBrushed interior keeps you warm & comfortable\r\nEncased elastic waistband with external drawcord\r\nOpen hand pockets\r\nTapered leg fit with self cuffs', '65', 'NAVY'),
(11, 'w_socks1.png', 'Nike Women\'s Dri-FIT Cushion Quarter Socks - 3 Pairs', 'Dri-FIT technology helps you stay dry and comfortable\r\nStreamlined toe seams for no distractions\r\nBreathable mesh at the top of the foot for enhanced ventilation\r\nArch band contours around the foot for a locked-in fit', '18', 'BLACK'),
(12, 'w_socks2.png', 'adidas Women\'s Superlite No Show Socks - 6 Pack', 'Soft, stretchy feel\r\nSix-pack of athletic socks\r\nMoisture-wicking yarn', '28', 'MED GREY'),
(13, 'w_socks3.png', 'Diadora Women\'s No Show 10 Pack Socks', 'Showcasing a range of soft, sweet hues, this ten-pack of no-show ankle socks from Diadora is a wardrobe essential for her.', '25', 'BLACK / WHITE'),
(14, 'w_socks4.png', 'Nike Women\'s Dri-FIT Cushion No Show Socks - 3-Pack', 'Dri-FIT technology helps you stay dry and comfortable\r\nCushioning at key zones for targeted comfort\r\nBreathable mesh at the top of the foot for enhanced ventilation\r\nArch band contours around the foot for a locked-in fit', '18', 'BLACK'),
(15, 'w_socks5.png', 'Under Armour Women’s Essentials No Show - 6 Pack - Pink', 'True seamless toe delivers superior comfort and reduced irritation\r\nFlat knit construction\r\nMaterial wicks sweat and dries really fast\r\nAnti-odor technology helps prevent odor in the sock\r\nUpdated stitch design for a more flattering silhouette', '25', 'PINK QUARTZ STRIPE / ASST'),
(16, 'w_swim1.png', 'Ripzone Women\'s Fraleight Front Tie Bikini Top', 'Removable pads\r\nTie front\r\nAdjustable straps\r\nDarted cups\r\nUnder band', '21', 'BLACK / RED HOTBLACK / RED HOT'),
(17, 'w_swim2.png', 'adidas Women\'s SH3.RO X-Shape Athletic Bikini Top', 'Adjustable Y-shaped back strap\r\nChlorine-resistant fabric\r\nMoulded cups with non-removable padding\r\nUnderbust band with power mesh\r\nInfinitex fitness eco', '45', 'BLACK'),
(18, 'w_swim3.png', 'Ripzone Women\'s Savanna Antigua Floral Athletic Bikini Top', 'Fully lined\r\nBikini top with multiple string strap detail\r\nMulti string straps', '17', 'BLUEBERRY'),
(19, 'w_swim4.png', 'O\'Neill Women\'s Dot Duo Tinsley Knotted Top', 'Triangle knot top\r\nAdjustable straps\r\nRemovable bra pads\r\nMetal logo badge\r\nPrinted Tactel', '38', 'RED'),
(20, 'w_swim5.png', 'adidas Originals Women\'s 3-Stripe Zip Scoop Bikini Top', 'Centre front zip', '31', 'SCARLET'),
(21, 'm_hat1.png', 'Columbia Men\'s Mesh Snapback Hat - Black Canadian Rockies', 'It’s a classic, snap-back, mesh ball cap featuring the Columbia Sportswear logo with groovy-styled hills and trees that are front and center. This is the hat all the cool kids will be wearing, a future, worn-in, go-to favorite.', '30', 'BLACK CANADIAN ROCKIES'),
(22, 'm_hat2.png', 'Nike SB Aerobill Pro 2 0 Cap - Black', 'Nike AeroBill technology combines breathability with sweat-wicking comfort.\r\nEmbroidered eyelets enhance airflow.\r\nTerry sweatband is soft and absorbent.\r\nFront patch reads \"Nike Skateboarding Proprietary Technology.\"', '35', 'BLACK/WHITE'),
(23, 'm_hat3.png', 'Nike Men\'s Train Legacy91 Dri-FIT Sport Cap', 'Dri-FIT technology helps your head stay dry and comfortable\r\nAdjustable hook-and-loop strap in the back lets you personalize the fit\r\nEmbroidered eyelets near the top let in air\r\n6 panel\r\nHand wash', '26', 'BLACK/WHITE'),
(24, 'm_hat4.png', 'Quiksilver Men\'s Pierside Straw Hat', 'The Quiksilver Men’s Pierside Straw Hat is a lifeguard style cap with a Quiksilver woven patch on the front, adjustable chin strap and made from 100% straw. Perfect for a day at the beach or an adventure in the sun.', '25', 'DARK BROWN'),
(25, 'm_hat5.png', 'Under Armour Men\'s Baseline Cap', 'UA Free Fit: pre-curved visor & unstructured front conforms to your head for a sleek, low profile fit\r\nDurable, stretch woven fabric provides a comfortable fit & feel\r\nUPF 30 protects your skin from the sun\'s harmful rays\r\nInterior mesh lining for added breathability\r\nAnti-glare undervisor for added protection & visibility\r\nUA Siro sweatband gives greater stretch & recovery, an ultra-soft feel & more breathable performance\r\nAdjustable strap & buckle closure\r\nRaised silicone front logo\r\nImported', '18', 'AMERICAN BLUE'),
(26, 'm_pants1.png', 'Under Armour Men\'s Vital Woven Training Pants', 'Fashioned out of lightweight ripstop woven fabric, the Under Armour Men’s Vital Woven Training Pants are great for exercising outdoors on challenging terrain.', '50', 'PITCH GREY'),
(27, 'm_pants2.png', 'PUMA Men\'s Essential Fleece Pants', 'No. 1 Logo rubber print\r\nElastic waistband with internal drawcord for customized comfort\r\nSide pockets for a convenient storage solution\r\nRib cuffs\r\nRegular fit\r\nMade with cotton from Better Cotton Initiative\r\nMade with recycled polyester\r\nMade with OEKO-TEX®Standard', '50', 'BLACK PUMA BLACK'),
(28, 'm_pants3.png', 'adidas Men\'s Essentials Tapered Cuff Pants', 'Stay in the zone. From home to the gym to the streets, these adidas tapered pants know how to keep you fresh and ready for anything. Moisture-absorbing AEROREADY means dry comfort no matter how fast-paced your day goes.', '65', 'BLACK'),
(29, 'm_pants4.png', 'Champion Men\'s Powerblend Fleece Jogger Pants', 'Men’s Champion Powerblend Fleece Joggers have a modern fit and are made with reduced pill and reduced shrinkage. Soft comfortable fabric is great for all day wear or just for lounging. A percentage of recycled fibers used in making the fabric. Extra stitch detail for durability. C patch on left hip below side pocket. Drawcord at waist for adjustability.', '50', 'BLACK'),
(30, 'm_pants5.png', 'Champion Men\'s Graphic Powerblend Fleece Jogger Pants', '9oz blended cotton-poly fleece\r\nReduced pill and shrinkage\r\nExtra stitch details for durability\r\nwaistband with enclosed elastic and flat drawcord\r\nChampion signature logo down left leg\r\nRibbed cuffs\r\nSide pockets', '55', 'BKC - BLACK'),
(31, 'm_socks1.png', 'Nike Everyday Plus Cushion Crew Training Socks (6 Pair)', 'The Nike Everyday Plus Cushion Crew Training Socks (6 Pair) feature sweat-wicking Dri-FIT technology in a crew silhouette for comfortable coverage around the ankle and calf. An arch band contours around the foot for a locked in fit.', '26', 'WHITE / BLACK'),
(32, 'm_socks2.png', 'Nike Men\'s Everyday Plus Cushion Crew Sock - 6 Pack', 'The Nike Everyday Plus Cushion Crew Training Socks (6 Pair) feature sweat-wicking technology in a crew silhouette for comfortable coverage around the ankle and calf. An arch band contours around the foot for a locked-in fit.', '26', 'BLACK / WHITE'),
(33, 'm_socks3.png', 'adidas Men\'s SL Stripe II Quarter 3 Pack Socks', 'Today’s workout is gruelling. You’re thirsty, tired and sore. But your feet stay comfortable and dry in these lightweight adidas socks. Time for a quick water break before launching another set.', '20', 'BLACK'),
(34, 'm_socks4.png', 'Nike Everyday Plus Cushion Ankle (3 Pair)', 'The Nike Everyday Plus Cushion Ankle Training Socks (3 Pair) feature sweat-wicking Dri-FIT technology in a 1/4-length silhouette for a comfortable fit around the ankle calf. An arch band contours around the foot for a locked in fit.', '22', 'WHITE / BLACK'),
(35, 'm_socks5.png', 'adidas Men\'s SL Stripe II 3 Pack No Show Socks', 'It’s leg day. The last thing you need is overheated feet. Thankfully these adidas no-show socks are workout-ready. Breathable mesh ventilates the top of your foot as you attack the leg press. Why not knock off another set?', '18', 'BLACK'),
(36, 'm_swim1.png', 'Hurley Men\'s Phantom Playo Jaco 20 Inch Boardshorts', 'Costa Rica dreamin’. The Hurley Phantom Playo Jaco 20\" Boardshorts have Phantom stretch fabric for maximized mobility, durability and quick-dry capability. The back pocket provides secure storage with Velcro closure and grosgrain pull. Phantom branding, a classic One and Only screenprint, and custom pattern make this a look that will make a lasting impression.', '49', 'BALTIC BLUE'),
(37, 'm_swim2.png', 'Quiksilver Men\'s Surfsilk Tijuana 19 Inch Boardshorts', 'Performance and comfort meet environmentally friendly fabrication in this Quiksilver men’s boardshort. Featuring durable Surfsilk 4-way stretch fabric designed for comfort on the inside with a resilient exterior, these boardshorts are made from recycled water bottles and have a plant-based hydrophobic coating.', '52', 'INDIA INK'),
(38, 'm_swim3.png', 'Under Armour Men\'s Camo 18 Inch Volley Shorts', 'Get moving in this men’s scalloped hem camo swim short. On or off the water, you’ll wear this gear. It’s light, stretchy, dries quick—oh, and it’s ridiculously comfortable too.', '45', 'BLACK'),
(39, 'm_swim4.png', 'Under Armour Men\'s Palm Haze 18 Inch Volley Shorts', 'Get moving in this men’s scalloped hem palm haze swim short. On or off the water, you’ll wear this gear. It’s light, stretchy, dries quick—oh, and it’s ridiculously comfortable too.', '45', 'VAPOR GREEN'),
(40, 'm_swim5.png', 'Speedo Men\'s Canada 18 Inch Volley Shorts', 'This volley is ready for action, whether that’s riding waves or swimming. It’s made from water-repellent fabric with added stretch that makes it comfortable to move. Block the Burn UPF 50+ delivers the sun protection you need for a day in the water.', '28', 'BLUE LEMONADE'),
(41, 'k_hat1.png', 'Nike Kids\' Heritage86 Hat', 'Nike Brushed Twill 6 Panel Hat with a curved brim, Embroidered logo and adjustable back strap.', '20', 'BLACK'),
(42, 'k_hat2.png', 'Nike Girls\' 4-6X Dri-FIT Adjustable Hat', 'Nike knit 6 Panel Hat with a curved brim, Embroidered logo and adjustable back strap.', '22', 'PINK'),
(43, 'k_hat3.png', 'Ripzone Girls\' Cosma All Over Print Reversible Bucket Hat', 'Your young one will be able to enjoy the sun while looking great with the Ripzone Cosma Bucket Hat. It is reversible so no matter what outfit they wear they’ll have an accessory to match.', '20', 'FLAMINGO AOP'),
(44, 'k_hat4.png', 'Under Armour Boys\' Blitzing 3.0 Stretch Fit Hat - Red', 'The Under Armour Boys’ Blitzing 3.0 Stretch Fit Hat has UA Free Fit that features a pre-curved visor & unstructured front panels that conform to your head for a sleek, low profile fit.', '25', 'RISK RED / BLACK'),
(45, 'k_hat5.png', 'Ripzone Toddler All Over Print Bucket Hat', 'Cute and practical, the Ripzone Toddler Bucket Hat is the perfect summer accessory.', '20', 'BLUE PATN'),
(46, 'k_pants1.png', 'Helly Hansen Toddler Logo Pant - Navy', 'Our classic HH branded cotton pant.', '35', 'NAVY'),
(47, 'k_pants2.png', 'Ripzone Toddler Boys\' 2-6 Roe Sweatpants', 'The Ripzone Roe Jr. Sweatpant is the perfect pair of pants to wear no matter if your child wants to lounge around or if they’re out to make the most of their day. They are a super comfy modern fit with ribbed knit cuffs that are ready for anything the day brings.', '25', 'BLACK BEAUTY'),
(48, 'k_pants3.png', 'adidas Boys\' 2-7 Tiro 21 Pants', 'Warming up or just wrapping your session, these juniors’ adidas pants keep you covered and comfy. Sweat-wicking AEROREADY tech ensures you stay dry as you build heat or dash off to the next thing. If that happens to be a long weekend of doing nothing at all? Enjoy that downtime in 3-Stripes style. This product is made with Primegreen, a series of high-performance recycled materials.', '45', 'BLACK / WHITE'),
(49, 'k_pants4.png', 'Nike Toddler Boys\' 4-7 Amplify Football Colourblock Pants', 'Lightweight brushed French terry fabric feels soft on the inside and out. Tapered jogger fit. Colorblock side panels in a vertical stripe design. Nike logo print at side. 2 seam pockets for handy stashing. Elastic waistband with a drawcord closure. Ribbed ankle cuffs stretch to the right fit.', '48', 'DEEP OCEAN / LT LIQUID LIME / GRN ABYSS'),
(50, 'k_pants5.png', 'adidas Boys\' 2-7 Brand Love Jogger Pants', 'In the sweet spot between pants and gym shorts, you’ll find these juniors’ adidas joggers. Their plush French terry, relaxed vibe and tapered cut hit all the marks for an everyday staple. Pair them with some eye-catching kicks and hit the streets.', '45', 'BLACK / WHITE'),
(51, 'k_socks1.png', 'adidas Youth 3-Stripe No Show Sock - 6 Pack - White/Black', 'He’ll step into sporty style with these boys’ adidas no-show socks.', '18', 'BLACK / WHITE / ONIX'),
(52, 'k_socks2.png', 'Under Armour Girls\' Essential 2.0 No Show Sock - 6 Pack - Pink', 'As durable as it is stylish, the GIRLS’ ESSENTIAL comes in fun colours and patterned assortments for today’s busy girl.', '14', 'WHITE PINK / ASST'),
(53, 'k_socks3.png', 'adidas Youth 3-Stripe Crew Sock - 6 Pack', 'Your little athlete will kick back and relax in these boys’ adidas socks.', '25', 'BLACK / WHITE'),
(54, 'k_socks4.png', 'Nike Youth Everyday Cushion Ankle Sock - 6 Pack', 'Kids’ Nike Performance Cushioned Quarter Training Socks (6 Pair) feature sweat-wicking technology for moisture management and zonal cushioning for comfort with every step. LycraÂ® spandex is 2 times as thick as previous versions, providing you with an improved fit.', '22', 'BLACK / WHITE'),
(55, 'k_socks5.png', 'Ripzone Boys\' 3 Pack Crew Socks - Dino', 'For a comfortable fit, our Printed Ripzone socks come in a cotton blend with just the right amount of stretch. Heels and toes are reinforced for durability and the Y-heel design provides an improved fit. These socks have a comfortable welt, or upper band, that feels good during extended wear.', '5', 'DINO ASSRT'),
(56, 'k_swim1.png', 'Helly Hansen Toddler Volley Short', 'A light and airy short, perfect for all your summer activities.', '15', 'NAVY'),
(57, 'k_swim2.png', 'Ripzone Boys\' Tod Tumbo 2 In 1 Trunk', 'From sand to water and back- the Ripzone Tumbo 2in1 swim trunks are ready for beachy terrain. These shorts are quick dry and protect you from rays with built in UPF 40. The trunks come with a zippered pocket for your essentials.', '14', 'BLUE'),
(58, 'k_swim3.png', 'Northcoast Boys\' 2-7 Photoprint Boardshorts', 'These 4-way stretch boardshorts will keep up with your little one no matter how he moves! He can choose his own style from Northcoast’s selection of Northcoast Photoprint Boardshorts. An elastic waistband and drawstring ensure a comfortable and secure fit. The durable microfiber material will survive all kinds of fun!', '15', 'BLACK PATN'),
(59, 'k_swim4.png', 'Speedo 4-6X Girls’ Printed Rash Gaurd 2-Piece - Grey', 'Perfect for young competitive swimmers, this colorful swimsuit is engineered to provide increased durability all season. LYCRA® XTRA LIFE™ fiber construction makes this style resistant to chemicals, while silicone grippers and a special back design ensure stay-put comfort no matter the activity.', '9', 'GREY'),
(60, 'k_swim5.png', 'Speedo Girls’ 4-6X Dolphin AOP Splice 1-Piece', 'She’ll stand out from the crowd in this vibrant mixed-print swimsuit. It’s constructed from a durable, stretchy fabric that can withstand the harmful effects of chlorine and countless hours of cannonballs. Stay-put silicone grippers are placed at the leg openings so she can play in her suit comfortably minus wedgie worries.', '20', 'NEW TURQUOISE'),
(61, 'w_boots1.png', 'Hunter Women\'s Original Play Tall Rain Boot', 'A new, versatile, lightweight, colourful and completely waterproof rain boot. Handcrafted from 10 individual parts, this new boot is a simplification of the Hunter Original design language, retaining the most iconic elements of the classic Original Tall Boot. Perfect for festivals, it has a pull tab at the heel for ease of foot entry.', '140', 'BLACK'),
(62, 'w_boots2.png', 'McKINLEY Women\'s Kimberly II Boots', 'A fresh take on the original Kimberly, which features a slim silhouette and a quilted design on the sidewall. Your feet will feel extra cozy during the mild Fall days and continue to keep you warm as the temperature drops.', '50', 'BROWN'),
(63, 'w_boots3.png', 'Bogs Women\'s Flora 2 Eye Rain Boots - Black', 'Made for urban adventures or activities in the yard, these easy on/off women\'s rain boots are lightweight and supportive. 100% waterproof this sleek silhouette features a shank for stability and support.', '90', 'BLACK'),
(64, 'w_boots4.png', 'Helly Hansen Women\'s Tundra 2 Waterproof Winter Boots', 'The Tundra 2 Boot offers warmth and comfort in abundance.', '87', 'BLACK'),
(65, 'w_boots5.png', 'Roxy Women\'s Maddie J Chelsea Boots', 'Slip into your new favourite pair of Fall boots; the Maddie is a pull-on chelsea style boot with a synthetic upper, featuring double gore panels,  a heel tab, cozy fleece lining and a Roxy heritage custom outsole.', '100', 'BLACK'),
(66, 'w_tank1.png', 'Nike Women\'s Yoga Core Collection Tank', 'The Nike Yoga Tank is made with soft, sweat-wicking fabric for comfort that lasts long after practice.', '29', 'BLACK'),
(67, 'w_tank2.png', 'adidas Women\'s Go To 2.0 Tank', 'Show up. Turn up. Let the rest flow. Need some extra motivation? Slip on this adidas tank top for a little hit of confidence. An edgy racerback cut looks as fresh as you’ll feel. Moisture-wicking AEROREADY keeps you dry during circuit training. Move from station to station with the kind of comfort that inspires your best performance.', '38', 'BLACK'),
(68, 'w_tank3.png', 'adidas Women\'s Sportswear Win 2.0 Tank', 'When you do good, you feel good. It’s a cycle. As part of adidas commitment to help end plastic waste, this adidas tank top is made from recycled materials. The casual look is all about everyday comfort and movement, wherever you are and whatever you’re doing. So whether that translates to an active recovery workout or a not-so-active rest day, you’ll be set when you pull on this tee.', '38', 'BLACK'),
(69, 'w_tank4.png', 'Woods Women\'s Fryatt Trekking Tank', 'The Women’s Fryatt Trekking Tank is the perfect top for active adventures. Moisture-wicking material keeps you dry while hiking and trekking in hot weather, while its lightweight, breathable fabric keeps you cool. The Fryatt features an envelope side pocket for any essentials you may want to keep in reach.', '31', 'SPARROW'),
(70, 'w_tank5.png', 'Under Armour Women\'s HeatGear® Armour Racer Print Tank', 'HeatGear® Armour is Under Armour’s original performance baselayer—the one you put on first and take off last. So they made it extra comfortable by wicking sweat and stretching so you can move no matter what.', '30', 'PLANET PINK'),
(71, 'w_hoodie1.png', 'PUMA Women\'s Essentials Logo Hoodie', 'PUMA Essentials Logo Hoodie. Rock a look essential to your everyday style. With a crisp, clean design and a classic fit, the Essentials Logo Hoodie is perfect for every occasion.', '60', 'BLACK'),
(72, 'w_hoodie2.png', 'PUMA Women\'s Sportswear Amplified Cropped Hoodie', 'PUMA’s lifestyle products are inspired by sport, yet offer a sleek, on-trend look.', '32', 'PUMA BLACK'),
(73, 'w_hoodie3.png', 'Skechers Women\'s Restful Hoodigan Hoodie', 'Wrap yourself in soft comfort and versatile style with the Skechers Apparel Restful Hoodigan.', '80', 'BLACK'),
(74, 'w_hoodie4.png', 'adidas Women\'s Sportswear Essential Linear Hoodie', 'Dig those classic vibes in this adidas relaxed-fit hoodie. Hit up the rink, hang out in the park or just lay low closer to home. You’ve got the perfect layer to keep things comfortable no matter what the day throws your way.', '70', 'BLACK / WHITEBLACK / WHITE'),
(75, 'w_hoodie5.png', 'PUMA Women\'s Sportswear Essential Logo Fleece Hoodie', 'PUMA’s lifestyle products are inspired by sport, yet offer a sleek, on-trend look.', '41', 'FOX GLOVE'),
(76, 'm_boots1.png', 'Timberland Men\'s Icon 6\" Basic Boot', 'The Timberland Men\'s 6\" Basic Waterproof Boots are designed to hold up to wear and tear, year after year. Ready for the great outdoors, these leather work boots feature seam-sealed waterproof protection and rubber lug outsoles to grip rugged terrain.', '180', 'BLACK'),
(77, 'm_boots2.png', 'Merrell Men\'s Ashford Classic Chukka Leather Boots - Butternut', 'Designed to stand the test of time, The Ashford Classic Chukka Leather gives a nod to our heritage. Featuring premium leather and an M Select™ GRIP outsole.', '89', 'BUTTERNUT'),
(78, 'm_boots3.png', 'Nike Men\'s Air Force 1 Gore-Tex Boots', 'With crisp overlays, bold accents and the perfect amount of flash to let you shine, the Nike Air Force 1 GTX Boot brings OG hoops style into winter. The GORE-TEX lining, large lugs on the outsole and removable silicone ankle strap toughen up the icon while the padded, high-cut collar keeps the heritage b-ball comfort.', '235', 'BLACK / GUM'),
(79, 'm_boots4.png', 'Woods Men\'s Athelney Winter Boots - Black', 'Be prepared for tough terrain and icy conditions with the Athelney Technical Winter Boot by Woods. No matter the activity, these boots have you covered. With features like a waterproof CANATITE® breathable membrane and Vibram® Arctic Grip outsole, this boot allows you to focus on your adventure -- and not your footwear.', '97', 'BLACK'),
(80, 'm_boots5.png', 'Merrell Men\'s Chameleon Thermo 8 Waterproof Winter Boots - Black', 'Even if you live for winter, you like to keep the elements at arms length or at least at a comfortable distance from your feet. These boots feature a lighter weight construction that won\'t hold you back with just the right amount of insulation and weatherproofing to keep the cold at bay.', '149', 'BLACK'),
(81, 'm_tank1.png', 'O\'Neill Men\'s Comp Tank', 'This is a soft cotton tank top that has a solid color design and high quality screen print. The standard fit is relaxed through the body.', '18', 'BLACK'),
(82, 'm_tank2.png', 'O\'Neill Men\'s Cuddle Tank', 'This is a soft organic cotton tank that has a solid color design and high quality screen print.', '18', 'ASPHALT'),
(83, 'm_tank3.png', 'O\'Neill Men\'s Locked Tank', 'With the O’Neill Men’s Locked Tank, you can stay locked into comfort mode despite sweltering, humid weather conditions at the shore or in the city. This classic-fit screen-printed graphic tank top for men regulates your body temperature with deep armholes and breathable organic cotton.', '18', 'PALE YELLOW'),
(84, 'm_tank4.png', 'Diadora Men\'s Restore Muscle T Shirt', 'This super flattering muscle tee helps keep you cool and comfy at the gym. Along with its anti-microbial finish to keep you smelling great while you’re working hard!', '30', 'PEACOAT'),
(85, 'm_tank5.png', 'O\'Neill Men\'s Runner Tank', 'When you’re on the run in sweltering summer weather, the O’Neill Men’s Runner Tank will help you beat the heat. This graphic screen-printed tank top for men keeps you cool as can be with extra deep armholes and breathable organic cotton knit material.', '18', 'LIGHT INDIGO'),
(86, 'm_hoodie1.png', 'Champion Men\'s Powerblend Fleece Pullover Hoodie', 'The same feel as the classic sweatshirt, the Champion Powerblend Pullover Hoodie is made of comfortable fleece fabric and comes with a drawstring hoodie. Keep warm with this hoodie version of a Champion sweater.', '60', 'BLACK'),
(87, 'm_hoodie2.png', 'The North Face Men\'s Half Dome Pullover Hoodie', 'Comfort plus convenience is the name of the game with this classic pullover. The soft, comfortable fabric makes for very easy care. A bar tacked kangaroo hand pocket and ribbing on the cuffs and hem add extra handiness and warmth.', '75', 'TNF BLACK'),
(88, 'm_hoodie3.png', 'PUMA Men\'s Essential Big Logo Pullover Hoodie', 'PUMA’s lifestyle products are inspired by sport, yet offer a sleek, on-trend look.', '60', 'NAVY ELEKTRO BLUE'),
(89, 'm_hoodie4.png', 'The North Face Men\'s Half Dome Pullover Hoodie', 'The Half Dome Pullover Hoodie is a classic, durable look for everywhere from the campsite to the campus quad.', '75', 'MEDIUM GREY HEATHER'),
(90, 'm_hoodie5.png', 'Under Armour Men\'s Rival Terry Big Logo Pullover Hoodie', 'Smooth outside and super-soft inside, the Under Armour Men’s Rival Terry Big Logo Pullover Hoodie helps you look and feel your best during your weekend outings and commutes to the gym.', '65', 'BLACK / ONYX WHITE'),
(91, 'k_boots1.png', 'Sorel Girls\' Yoot Pac Waterproof Winter Boots - Grey/Orchid', 'Whether building snowmen or riding sleds, this boot offers warmth, durability, and comfort in a versatile, low-profile design. A waterproof nylon upper with a removable felt liner sports a soft sherpa pile snow cuff.', '49', 'GRAY'),
(92, 'k_boots2.png', 'The North Face Girls\' Amore II Winter Boots - Black/Grey', 'A water-resistant boot that’s lightweight but big on warmth, ample Heatseeker™ insulation guarantees toasty toes in cool to cold winter conditions. The fleece-lined collar makes these comfortable boots easy to slip on, so she can get outdoors faster.', '44', 'BLACK'),
(93, 'k_boots3.png', 'Helly Hansen Kids\' Grade/Pre-School JK Varanger Winter Boots', 'The Jk Varanger insulated is a warm winter boot with Wool Felt insulation and a hydrophobic treated rib-stop upper. Quick-lace system help keep snow and water out during those long days out playing in the snow and rain. This sytem and a rubber lower part keeps you wamr and dry all day.', '80', 'NAVY'),
(94, 'k_boots4.png', 'Ripzone Kids\' Snowden Winter Boots', 'The Ripzone Snowden boots are the perfect choice to keep your child’s feet nice and toasty when the weather gets chilly outside. For a fast and secure fit, there is a bungee quick lace closure, so you don’t ever have to worry about your child’s boots coming loose. The outer shell of the boot is waterproof, so no matter how wet the weather gets, your child will be able to stay dry and cozy all throughout the day.', '52', 'BLACK / BLUE'),
(95, 'k_boots5.png', 'Helly Hansen Boys\' Bivy Winter Boots - Black/Grey', 'From Helly Hansen, these BIVY winter boots are built tough and ready for frigid weather. They feature Helly Tech® waterproof and breathable technology. The removable heat-moldable technical liner system is cold rated to minus 50° Celsius, which makes them perfect for even the coldest of days.', '40', 'BLACK'),
(96, 'k_tank1.png', 'Nike Toddler Girls\' 4-6X Practice Perfect Fashion Tank', 'High shine tricot fabric infused with stretch for extra comfort. Contrast trim. Scoop neck. Fixed layers. Mesh back panel with logo stripe. Rounded high-low hem.', '28', 'PURPLE CHALK'),
(97, 'k_tank2.png', 'Ripzone Girls\' 2-7 Ace Graphic Tank', 'Take charge of the summer with the Ripzone Ace tank. All of your friends will love your fit and you’ll feel great wearing this tank.', '9', 'BRIGHT WHITE'),
(98, 'k_tank3.png', 'Ripzone Girls\' 2-7 Ace Graphic Tank', 'Take charge of the summer with the Ripzone Ace tank. All of your friends will love your fit and you’ll feel great wearing this tank.', '9', 'BLUE TINT'),
(99, 'k_tank4.png', 'Ripzone Toddler Boys\' 2-6 Graphic Colorblock Tank', 'On the beach or hanging out with friends in the sun, your child deserves to feel as good as this tank makes him look. The classic fit allows for a super comfortable fit so no matter what the summer brings you can be sure he’ll look and feel great!', '9', 'BRIGHT WHITE / BLUE TINT'),
(100, 'k_tank5.png', 'Ripzone Toddler Boys\' 2-6 Graphic Colorblock Tank', 'On the beach or hanging out with friends in the sun, your child deserves to feel as good as this tank makes him look. The classic fit allows for a super comfortable fit so no matter what the summer brings you can be sure he’ll look and feel great!', '9', 'BRIGHT WHITE / MEMPHIS'),
(101, 'k_hoodie1.png', 'Converse Girls\' Multi Stripe Full Zip Hoodie', 'This Converse Girl’s Tee is designed to be comfy casual for everyday wear.', '55', 'BLACK'),
(102, 'k_hoodie2.png', 'Helly Hansen Junior Girls\' Graphic Hoodie', 'This hoodie is a great casual piece for juniors to wear to school, to socialise in, or for casual exercise in fall. The graphic design makes for a stylish look that can be worn across all seasons and environments.', '55', 'MAGENTA HAZE'),
(103, 'k_hoodie3.png', 'Champion Girls\' Essentials Hoodie', 'Don’t hold her back, your girl is going places! The Champion Girls’ Essentials Hoodie, a cozy embroidered fleece pullover hooded sweatshirt, allows for more natural movement with raglan sleeves.', '40', 'PINK CANDY'),
(104, 'k_hoodie4.png', 'Vans Boys’ Classic II Pullover Hoodie', 'The Boys Vans Classic Pullover Hoodie is a 60% cotton, 40% polyester fleece pullover hooded sweatshirt with a front pouch pocket and signature logo graphics at the chest.', '55', 'BLACK / WHITE'),
(105, 'k_hoodie5.png', 'Nike Sportswear Boys\' Club Pullover Hoodie', 'The Nike Sportswear Club Fleece Hoodie feels soft and cozy so you stay warm wherever you go.', '48', 'MIDNIGHT NAVY / HYPER CRIMSON');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pro_gender`
--

DROP TABLE IF EXISTS `tbl_pro_gender`;
CREATE TABLE IF NOT EXISTS `tbl_pro_gender` (
  `pro_gender_id` int(5) NOT NULL AUTO_INCREMENT,
  `product_id` int(5) NOT NULL,
  `gender_id` int(5) NOT NULL,
  PRIMARY KEY (`pro_gender_id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pro_gender`
--

INSERT INTO `tbl_pro_gender` (`pro_gender_id`, `product_id`, `gender_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 31, 1),
(32, 32, 1),
(33, 33, 1),
(34, 34, 1),
(35, 35, 1),
(36, 36, 1),
(37, 37, 1),
(38, 38, 1),
(39, 39, 1),
(40, 40, 1),
(41, 41, 3),
(42, 42, 3),
(43, 43, 3),
(44, 44, 3),
(45, 45, 3),
(46, 46, 3),
(47, 47, 3),
(48, 48, 3),
(49, 49, 3),
(50, 50, 3),
(51, 51, 3),
(52, 52, 3),
(53, 53, 3),
(54, 54, 3),
(55, 55, 3),
(56, 56, 3),
(57, 57, 3),
(58, 58, 3),
(59, 59, 3),
(60, 60, 3),
(61, 61, 2),
(62, 62, 2),
(63, 63, 2),
(64, 64, 2),
(65, 65, 2),
(66, 66, 2),
(67, 67, 2),
(68, 68, 2),
(69, 69, 2),
(70, 70, 2),
(71, 71, 2),
(72, 72, 2),
(73, 73, 2),
(74, 74, 2),
(75, 75, 2),
(76, 76, 1),
(77, 77, 1),
(78, 78, 1),
(79, 79, 1),
(80, 80, 1),
(81, 81, 1),
(82, 82, 1),
(83, 83, 1),
(84, 84, 1),
(85, 85, 1),
(86, 86, 1),
(87, 87, 1),
(88, 88, 1),
(89, 89, 1),
(90, 90, 1),
(91, 91, 3),
(92, 92, 3),
(93, 93, 3),
(94, 94, 3),
(95, 95, 3),
(96, 96, 3),
(97, 97, 3),
(98, 98, 3),
(99, 99, 3),
(100, 100, 3),
(101, 101, 3),
(102, 102, 3),
(103, 103, 3),
(104, 104, 3),
(105, 105, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pro_sort`
--

DROP TABLE IF EXISTS `tbl_pro_sort`;
CREATE TABLE IF NOT EXISTS `tbl_pro_sort` (
  `pro_sort_id` int(5) NOT NULL AUTO_INCREMENT,
  `product_id` int(5) NOT NULL,
  `sort_id` int(5) NOT NULL,
  PRIMARY KEY (`pro_sort_id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pro_sort`
--

INSERT INTO `tbl_pro_sort` (`pro_sort_id`, `product_id`, `sort_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 2),
(27, 27, 2),
(28, 28, 2),
(29, 29, 2),
(30, 30, 2),
(31, 31, 3),
(32, 32, 3),
(33, 33, 3),
(34, 34, 3),
(35, 35, 3),
(36, 36, 4),
(37, 37, 4),
(38, 38, 4),
(39, 39, 4),
(40, 40, 4),
(41, 41, 1),
(42, 42, 1),
(43, 43, 1),
(44, 44, 1),
(45, 45, 1),
(46, 46, 2),
(47, 47, 2),
(48, 48, 2),
(49, 49, 2),
(50, 50, 2),
(51, 51, 3),
(52, 52, 3),
(53, 53, 3),
(54, 54, 3),
(55, 55, 3),
(56, 56, 4),
(57, 57, 4),
(58, 58, 4),
(59, 59, 4),
(60, 60, 4),
(61, 61, 5),
(62, 62, 5),
(63, 63, 5),
(64, 64, 5),
(65, 65, 5),
(66, 66, 6),
(67, 67, 6),
(68, 68, 6),
(69, 69, 6),
(70, 70, 6),
(71, 71, 7),
(72, 72, 7),
(73, 73, 7),
(74, 74, 7),
(75, 75, 7),
(76, 76, 5),
(77, 77, 5),
(78, 78, 5),
(79, 79, 5),
(80, 80, 5),
(81, 81, 6),
(82, 82, 6),
(83, 83, 6),
(84, 84, 6),
(85, 85, 6),
(86, 86, 7),
(87, 87, 7),
(88, 88, 7),
(89, 89, 7),
(90, 90, 7),
(91, 91, 5),
(92, 92, 5),
(93, 93, 5),
(94, 94, 5),
(95, 95, 5),
(96, 96, 6),
(97, 97, 6),
(98, 98, 6),
(99, 99, 6),
(100, 100, 6),
(101, 101, 7),
(102, 102, 7),
(103, 103, 7),
(104, 104, 7),
(105, 105, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sort`
--

DROP TABLE IF EXISTS `tbl_sort`;
CREATE TABLE IF NOT EXISTS `tbl_sort` (
  `sort_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_name` varchar(30) NOT NULL,
  PRIMARY KEY (`sort_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sort`
--

INSERT INTO `tbl_sort` (`sort_id`, `sort_name`) VALUES
(1, 'hats'),
(2, 'pants'),
(3, 'socks'),
(4, 'swimwear'),
(5, 'boots'),
(6, 'tanks'),
(7, 'hoodies');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_level` int(5) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_level`) VALUES
(1, '', 'admin', 'test', '', '2021-06-01 01:16:00', 'no', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
