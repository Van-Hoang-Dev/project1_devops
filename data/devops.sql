-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 25, 2024 at 03:53 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devops`
--
CREATE DATABASE IF NOT EXISTS `devops` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `devops`;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `description`, `img`) VALUES
(1, 'beauty kit', 'A beauty kit typically comprises a range of beauty and skincare products aimed at enhancing beauty and maintaining healthy skin. It includes items such as foundation, lipstick, blush, mascara, and eyeliner for makeup application, as well as skincare products like cleansers, moisturizers, masks, and sunscreen. Additionally, haircare products such as shampoo, conditioner, and styling gel may be included in the kit. Makeup tools like brushes, sponges, and tweezers are also commonly included. With the versatile combination of compact and convenient products, a beauty kit is the perfect choice for individuals to maintain and enhance their appearance on a daily basis.', 'banner1.jpeg'),
(2, 'A Beauty Tool Kit', '\"A beauty tool kit\" is a collection of beauty tools and accessories designed to aid in makeup application, skincare routines, and haircare tasks. These kits often include items such as makeup brushes, sponges, tweezers, eyelash curlers, mirrors, and hair styling tools like combs or hairbrushes. Beauty tool kits provide convenience and versatility for individuals to achieve their desired look effectively.', 'banner2.jpeg'),
(3, 'Skincare Products', '\"Skincare products\" are items designed to nourish, protect, and enhance the health and appearance of the skin. These products can include a wide range of items, such as cleansers, toners, moisturizers, serums, face masks, exfoliants, sunscreen, and specialized treatments like acne creams or anti-aging serums. Skincare products are essential for maintaining healthy skin, addressing specific skin concerns, and promoting a radiant complexion.', 'banner3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

DROP TABLE IF EXISTS `configs`;
CREATE TABLE IF NOT EXISTS `configs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `key`, `value`) VALUES
(1, 'PRODUCT', 'The premium products of this store blend exquisite quality and sophisticated design, creating an authentic shopping experience for discerning customers passionate about perfection.'),
(2, 'ABOUT', 'Our beauty store offers a diverse range of premium skincare, makeup, and fragrance products designed to elevate your beauty routine. With a keen eye for quality and elegance, we carefully select each item to ensure it meets our standards of excellence. Our knowledgeable staff are dedicated to providing personalized assistance and expert advice to help you find the perfect products for your individual needs. Step into our store and immerse yourself in a world of luxury where every detail is thoughtfully considered. Experience beauty like never before with our curated collection of high-end beauty essentials.'),
(3, 'BEAUTIFLIE', 'Unlock the beauty of self-care with us, where every product is a testament to your inner glow. From nourishing skincare to captivating cosmetics, our brand is your partner in embracing your natural allure and radiance.'),
(4, 'BEST_PRODUCT', 'Neutrogena Hydro Boost Water Gel Moisturizer\nMAC Ruby Woo Lipstick\nMaybelline Great Lash Mascara\nNARS Orgasm Blush\nCetaphil Gentle Skin Cleanser\n'),
(5, 'ADDRESS', '53 Võ Văn Ngân, Linh Chiểu, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh'),
(6, 'EMAIL', 'CD22TT11@gmail.tdc.edu.vn'),
(7, 'PHONE_NUMBER', '0383277965');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `img`) VALUES
(1, 'makeup brush set', 'A makeup brush set is an indispensable secret to achieving a flawless and natural-looking makeup application. This set includes a range of high-quality brushes, each designed specifically to apply and distribute cosmetics with precision and ease.\n\nIf you\'re seeking perfection in every layer of makeup, this brush set will be your invaluable companion. From smoothly applying foundation to sculpting and defining the face, each brush in the set is designed with a specific purpose and offers high precision.\n\nWith soft synthetic or natural bristles, each brush provides a comfortable feel during application and helps distribute cosmetics evenly on the skin. You\'ll easily create makeup techniques from natural to glamorous with just a few gentle brush strokes.\n\nNot only essential tools for daily makeup application, but the brush set also makes an ideal gift for anyone passionate about makeup or looking to enhance their makeup skills. With the versatility and variety of each brush, a makeup brush set is an undeniable investment for anyone aiming to achieve confident and radiant beauty.', 10, '1.jpeg'),
(2, 'Gucci lipstick', 'Gucci Lipstick is an essential part of anyone\'s beauty collection, serving as the perfect accent for lips, creating focal points, and expressing personal style.\n\nA Gucci Lipstick is not just a makeup product; it\'s also a symbol of confidence and allure.\n\nThe color of Gucci Lipstick can be an expression of personality and emotion. From subtle nude tones to bold, captivating shades, each Gucci Lipstick tells its own story. When looking at a Gucci Lipstick, you can feel not only the beauty of the color but also the meticulousness and sophistication in every stroke of the product.\n\nThe texture of Gucci Lipstick is also crucial. A smooth, easy-to-apply Gucci Lipstick that doesn\'t dry out the lips will make them soft and more attractive. Moreover, the Gucci Lipstick formula provides moisture to the lips, helping to maintain their plumpness and softness throughout the day.\n\nThe scent of Gucci Lipstick is also an important factor. From seductive floral scents to refreshing fruity fragrances, each aroma brings a sense of comfort and freshness when applied.\n\nWith these unique characteristics, Gucci Lipstick is not just a makeup product but also a symbol of beauty and personal style.', 100, '2.jpeg'),
(3, 'Eyeshadow Palette', 'An eyeshadow palette is a versatile and essential tool for creating endless eye makeup looks. With a variety of shades and finishes, an eyeshadow palette allows for creativity and experimentation.\n\nWhether you prefer natural, everyday looks or bold, dramatic statements, an eyeshadow palette has you covered. From matte neutrals to shimmering metallics, the possibilities are endless.\n\nAn eyeshadow palette typically includes a range of complementary shades that can be mixed and matched to create custom looks. With a combination of light, medium, and dark shades, you can easily transition from day to night.\n\nIn addition to providing color, eyeshadows also help to define and enhance the eyes. By strategically placing shadows on the lid, crease, and brow bone, you can create the illusion of larger, more awake eyes.\n\nOverall, an eyeshadow palette is a must-have for any makeup enthusiast. With its versatility and range of shades, it\'s the perfect tool for expressing your creativity and enhancing your natural beauty.', 50, '3.jpeg'),
(4, 'Foundation', 'Foundation is a key component of any makeup routine, providing the perfect base for the rest of your makeup.\n\nWhether you prefer a light, natural coverage or a full-coverage finish, there\'s a foundation out there for you. With a variety of formulas available, including liquid, cream, powder, and stick, you can find the perfect foundation to suit your skin type and desired level of coverage.\n\nIn addition to evening out skin tone and covering imperfections, foundation also helps to create a smooth, flawless canvas for the rest of your makeup. By providing a base for other products to adhere to, foundation helps to extend the wear time of your makeup and prevent it from creasing or fading throughout the day.\n\nWhen choosing a foundation, it\'s important to consider factors such as your skin type, undertone, and desired finish. With the right foundation, you can achieve a natural, radiant complexion that looks and feels like your skin, only better.', 40, '4.jpeg'),
(5, 'Mascara', 'Mascara is a makeup essential that helps to define and enhance the lashes, making your eyes appear bigger, brighter, and more awake.\n\nWhether you prefer a natural, everyday look or a bold, dramatic effect, mascara can help you achieve the look you desire. With a variety of formulas and brushes available, you can find the perfect mascara to suit your needs and preferences.\n\nIn addition to adding volume and length to the lashes, mascara also helps to separate and define each lash, giving them a more fluttery, feathery appearance. By coating the lashes from root to tip, mascara helps to create the illusion of thicker, fuller lashes.\n\nWhen choosing a mascara, it\'s important to consider factors such as the formula, brush shape, and desired effect. Whether you\'re looking for a waterproof formula that can withstand sweat and tears or a lengthening formula that helps to elongate the lashes, there\'s a mascara out there for you.\n\nOverall, mascara is a makeup staple that can help to enhance your natural beauty and make your eyes the focal point of your look.', 20, '5.jpeg'),
(6, 'Concealer', 'Concealer is a versatile makeup product that helps to camouflage imperfections, brighten the under-eye area, and create a flawless complexion.\n\nWhether you\'re dealing with dark circles, blemishes, or redness, concealer can help to hide a multitude of sins. With a variety of formulas available, including liquid, cream, and stick, you can find the perfect concealer to suit your needs and preferences.\n\nIn addition to covering imperfections, concealer also helps to brighten and highlight the under-eye area, making you look more awake and refreshed. By applying concealer to the inner corners of the eyes and blending it outwards, you can create a subtle, natural-looking highlight that helps to counteract darkness and shadows.\n\nWhen choosing a concealer, it\'s important to consider factors such as your skin type, undertone, and desired level of coverage. Whether you\'re looking for a lightweight formula that provides sheer coverage or a full-coverage formula that can cover even the most stubborn blemishes, there\'s a concealer out there for you.\n\nOverall, concealer is a makeup essential that can help you achieve a flawless complexion and boost your confidence.', 30, '6.jpeg'),
(7, 'Blush', 'Blush is a makeup product that adds a flush of color to the cheeks, helping to create a healthy, youthful glow.\n\nWhether you prefer a subtle, natural look or a bold, statement-making flush, blush can help you achieve the desired effect. With a variety of shades and finishes available, including matte, shimmer, and satin, you can find the perfect blush to suit your skin tone and personal style.\n\nIn addition to adding color to the cheeks, blush also helps to define and sculpt the face, enhancing your natural bone structure and creating the illusion of higher cheekbones. By applying blush to the apples of the cheeks and blending it upwards towards the temples, you can create a soft, diffused effect that looks effortlessly beautiful.\n\nWhen choosing a blush, it\'s important to consider factors such as your skin tone, undertone, and desired level of pigmentation. Whether you\'re looking for a sheer, buildable formula that provides a subtle wash of color or a highly pigmented formula that delivers intense payoff with just one swipe, there\'s a blush out there for you.\n\nOverall, blush is a makeup essential that can help you add warmth and dimension to your complexion, leaving you looking radiant and glowing.', 25, '7.jpeg'),
(8, 'Highlighter', 'Highlighter is a makeup product that adds a luminous, lit-from-within glow to the skin, helping to accentuate the high points of the face and create a radiant complexion.\n\nWhether you prefer a subtle, natural glow or a bold, blinding highlight, highlighter can help you achieve the desired effect. With a variety of formulas available, including powder, cream, and liquid, you can find the perfect highlighter to suit your skin type and personal style.\n\nIn addition to adding radiance to the skin, highlighter also helps to define and sculpt the face, enhancing your natural bone structure and creating the illusion of higher cheekbones. By applying highlighter to the high points of the face, such as the tops of the cheekbones, brow bones, and cupid\'s bow, you can create a luminous, dewy complexion that looks effortlessly beautiful.\n\nWhen choosing a highlighter, it\'s important to consider factors such as your skin tone, undertone, and desired level of intensity. Whether you\'re looking for a subtle, lit-from-within glow or a bold, metallic sheen, there\'s a highlighter out there for you.\n\nOverall, highlighter is a makeup essential that can help you achieve a radiant, glowing complexion that looks healthy and luminous.', 35, '8.jpeg'),
(9, 'Lip Gloss', 'Lip gloss is a makeup product that adds shine, dimension, and hydration to the lips, helping to create a plump, juicy pout.\n\nWhether you prefer a sheer, natural look or a bold, glossy finish, lip gloss can help you achieve the desired effect. With a variety of formulas available, including clear, tinted, and shimmering, you can find the perfect lip gloss to suit your needs and preferences.\n\nIn addition to adding shine and dimension to the lips, lip gloss also helps to hydrate and nourish the delicate skin, keeping your lips soft, smooth, and supple throughout the day. By applying lip gloss alone or layering it over lipstick, you can create a custom lip look that\'s uniquely you.\n\nWhen choosing a lip gloss, it\'s important to consider factors such as the formula, finish, and desired level of pigmentation. Whether you\'re looking for a lightweight, non-sticky formula that provides a subtle hint of color or a high-shine, full-coverage formula that delivers intense payoff, there\'s a lip gloss out there for you.\n\nOverall, lip gloss is a makeup essential that can help you achieve a plump, juicy pout that looks and feels irresistible.', 15, '9.jpeg'),
(10, 'Setting Spray', 'Setting spray is a makeup product that helps to lock in your makeup, keeping it looking fresh and flawless all day long.\n\nWhether you\'re dealing with heat, humidity, or long hours, setting spray can help your makeup stay put and withstand whatever the day throws at you. With a variety of formulas available, including mattifying, dewy, and long-lasting, you can find the perfect setting spray to suit your needs and preferences.\n\nIn addition to prolonging the wear time of your makeup, setting spray also helps to blur imperfections, minimize the appearance of pores, and create a smooth, seamless finish. By misting setting spray over your finished makeup look, you can help to set everything in place and prevent it from smudging, fading, or transferring throughout the day.\n\nWhen choosing a setting spray, it\'s important to consider factors such as your skin type, desired finish, and any specific concerns you may have. Whether you\'re looking for a setting spray that controls oil and shine, adds a dewy, luminous glow, or extends the wear time of your makeup, there\'s a setting spray out there for you.\n\nOverall, setting spray is a makeup essential that can help you achieve a flawless, long-lasting makeup look that stays put from morning until night.', 20, '10.jpeg'),
(11, 'Eyeliner', 'Eyeliner is a makeup product that helps to define and enhance the eyes, making them appear bigger, brighter, and more captivating.\n\nWhether you prefer a subtle, natural look or a bold, dramatic effect, eyeliner can help you achieve the look you desire. With a variety of formulas available, including pencil, liquid, gel, and pen, you can find the perfect eyeliner to suit your needs and preferences.\n\nIn addition to adding definition to the eyes, eyeliner also helps to create the illusion of thicker, fuller lashes, making your eyes appear more awake and youthful. By applying eyeliner along the lash line and extending it outwards, you can create a variety of eye looks, from classic cat eyes to sultry smokey eyes.\n\nWhen choosing an eyeliner, it\'s important to consider factors such as the formula, finish, and desired level of intensity. Whether you\'re looking for a long-lasting formula that won\'t budge or a smudgeable formula that allows for easy blending, there\'s an eyeliner out there for you.\n\nOverall, eyeliner is a makeup essential that can help you enhance your natural beauty and make your eyes the focal point of your look.', 18, '11.jpeg'),
(12, 'Brow Pencil', 'Brow pencil is a makeup product that helps to define, shape, and fill in the eyebrows, framing the face and enhancing your natural beauty.\n\nWhether you prefer a natural, feathered look or a bold, defined brow, brow pencil can help you achieve the desired effect. With a variety of shades available, ranging from light blonde to deep brunette, you can find the perfect brow pencil to match your hair color and skin tone.\n\nIn addition to adding color to the brows, brow pencil also helps to create the illusion of fuller, thicker brows, making them appear more defined and polished. By filling in sparse areas and extending the shape of the brows, you can create a more symmetrical and balanced look that frames your face beautifully.\n\nWhen choosing a brow pencil, it\'s important to consider factors such as the formula, texture, and desired level of pigmentation. Whether you\'re looking for a soft, natural finish or a bold, statement-making look, there\'s a brow pencil out there for you.\n\nOverall, brow pencil is a makeup essential that can help you achieve perfect brows that frame your face and enhance your natural beauty.', 12, '12.jpeg'),
(13, 'Makeup Remover', 'Makeup remover is a skincare essential that helps to gently and effectively remove makeup, dirt, and impurities from the skin, leaving it clean, refreshed, and hydrated.\n\nWhether you wear makeup every day or only on special occasions, makeup remover is an important step in your skincare routine. With a variety of formulas available, including micellar water, cleansing oils, and bi-phase solutions, you can find the perfect makeup remover to suit your needs and preferences.\n\nIn addition to removing makeup, makeup remover also helps to cleanse and purify the skin, removing dirt, oil, and impurities that can clog pores and lead to breakouts. By gently massaging makeup remover onto the skin and rinsing it off with water, you can achieve a clean, fresh complexion that looks and feels revitalized.\n\nWhen choosing a makeup remover, it\'s important to consider factors such as your skin type, makeup preferences, and any specific concerns you may have. Whether you\'re looking for a gentle formula that\'s suitable for sensitive skin or a powerful formula that can remove waterproof makeup, there\'s a makeup remover out there for you.\n\nOverall, makeup remover is a skincare essential that can help you achieve clean, clear skin and maintain a healthy, radiant complexion.', 8, '13.jpeg'),
(14, 'Face Mask', 'Face mask is a skincare product that helps to nourish, hydrate, and rejuvenate the skin, leaving it looking and feeling refreshed, revitalized, and radiant.\n\nWhether you\'re dealing with dryness, dullness, or congestion, face mask can help you address a variety of skincare concerns. With a variety of formulas available, including sheet masks, clay masks, and gel masks, you can find the perfect face mask to suit your needs and preferences.\n\nIn addition to providing instant results, face mask also helps to improve the overall health and appearance of the skin over time. By using face mask regularly as part of your skincare routine, you can help to hydrate and nourish the skin, minimize the appearance of pores, and reduce the signs of aging.\n\nWhen choosing a face mask, it\'s important to consider factors such as your skin type, specific concerns, and desired results. Whether you\'re looking for a hydrating mask that plumps and smooths the skin or a purifying mask that detoxifies and clarifies, there\'s a face mask out there for you.\n\nOverall, face mask is a skincare essential that can help you achieve beautiful, glowing skin that looks and feels healthy and radiant.', 15, '14.jpeg'),
(15, 'Makeup Sponge', 'Makeup sponge is a versatile tool that helps to apply and blend makeup seamlessly, creating a flawless, airbrushed finish.\n\nWhether you prefer liquid, cream, or powder formulas, makeup sponge can help you achieve a smooth, even application with minimal effort. With a variety of shapes and sizes available, including teardrop, egg, and wedge, you can find the perfect makeup sponge to suit your needs and preferences.\n\nIn addition to applying makeup, makeup sponge also helps to blend and diffuse product for a natural, seamless finish. By dampening makeup sponge with water before use, you can achieve a more sheer, dewy finish, while using it dry allows for more coverage and intensity.\n\nWhen choosing a makeup sponge, it\'s important to consider factors such as the material, texture, and shape. Whether you\'re looking for a latex-free option that\'s suitable for sensitive skin or a multi-functional option that can be used for both wet and dry products, there\'s a makeup sponge out there for you.\n\nOverall, makeup sponge is a makeup essential that can help you achieve a flawless, professional-looking makeup application that lasts all day.', 5, '15.jpeg'),
(16, 'Makeup Bag', 'Makeup bag is an essential accessory that helps to organize and protect your makeup collection, making it easy to find and transport your favorite products wherever you go.\n\nWhether you\'re traveling, commuting, or simply need to keep your makeup organized at home, makeup bag is a must-have accessory. With a variety of sizes, shapes, and designs available, you can find the perfect makeup bag to suit your needs and personal style.\n\nIn addition to providing storage and organization, makeup bag also helps to protect your makeup from damage, spills, and accidents. By keeping your makeup securely stored in a makeup bag, you can ensure that your favorite products stay safe and intact, no matter where life takes you.\n\nWhen choosing a makeup bag, it\'s important to consider factors such as size, material, and features. Whether you\'re looking for a compact pouch that fits neatly in your purse or a spacious case that holds all of your essentials, there\'s a makeup bag out there for you.\n\nOverall, makeup bag is an essential accessory that helps you stay organized, protect your makeup, and look stylish wherever you go.', 20, '16.jpeg'),
(17, 'Makeup Brushes Cleanser', 'Makeup brushes cleanser is an essential product that helps to remove makeup, dirt, and bacteria from your makeup brushes, keeping them clean, hygienic, and in top condition.\n\nWhether you\'re a makeup artist or a beauty enthusiast, makeup brushes cleanser is a must-have product in your skincare routine. With a variety of formulas available, including liquid, solid, and foam, you can find the perfect makeup brushes cleanser to suit your needs and preferences.\n\nIn addition to removing makeup and impurities, makeup brushes cleanser also helps to condition and soften the bristles, keeping them in optimal condition for flawless makeup application. By regularly cleaning your makeup brushes with makeup brushes cleanser, you can prolong their lifespan and ensure that they perform at their best.\n\nWhen choosing a makeup brushes cleanser, it\'s important to consider factors such as the formula, ingredients, and compatibility with your brushes. Whether you\'re looking for a gentle cleanser that\'s suitable for all brush types or a deep-cleansing formula that removes stubborn buildup, there\'s a makeup brushes cleanser out there for you.\n\nOverall, makeup brushes cleanser is an essential product that helps you maintain clean, hygienic makeup brushes and achieve flawless makeup application every time.', 12, '17.jpeg'),
(18, 'Eyelash Curler', 'Eyelash curler is a makeup tool that helps to curl and lift the lashes, making your eyes appear bigger, brighter, and more awake.\n\nWhether you have straight, stubborn lashes or naturally curly lashes that need a little extra lift, eyelash curler can help you achieve the desired effect. With a variety of designs available, including traditional and heated, you can find the perfect eyelash curler to suit your needs and preferences.\n\nIn addition to curling the lashes, eyelash curler also helps to open up the eyes, making them appear larger and more youthful. By gently clamping the lashes at the base and holding for a few seconds, you can create a natural, wide-eyed look that enhances your overall appearance.\n\nWhen choosing an eyelash curler, it\'s important to consider factors such as the shape, size, and curvature of the curler. Whether you\'re looking for a compact curler that\'s easy to use on the go or a wide-curve curler that fits all eye shapes, there\'s an eyelash curler out there for you.\n\nOverall, eyelash curler is a makeup essential that can help you achieve long-lasting, beautifully curled lashes that frame your eyes and enhance your natural beauty.', 8, '18.jpeg'),
(19, 'Eyebrow Gel', 'Eyebrow gel is a makeup product that helps to groom, shape, and set the eyebrows, keeping them in place and enhancing your natural beauty.\n\nWhether you have sparse, unruly brows or full, thick brows that need a little extra definition, eyebrow gel can help you achieve the desired effect. With a variety of formulas available, including clear, tinted, and fiber-infused, you can find the perfect eyebrow gel to suit your needs and preferences.\n\nIn addition to setting the eyebrows, eyebrow gel also helps to add volume and dimension, making them appear fuller and more defined. By brushing eyebrow gel through the brows in upward strokes, you can create a natural, feathery look that lasts all day.\n\nWhen choosing an eyebrow gel, it\'s important to consider factors such as the formula, brush shape, and desired level of hold. Whether you\'re looking for a lightweight gel that provides subtle definition or a long-lasting gel that keeps unruly brows in place, there\'s an eyebrow gel out there for you.\n\nOverall, eyebrow gel is a makeup essential that can help you achieve perfectly groomed brows that frame your face and enhance your natural beauty.', 10, '19.jpeg'),
(20, 'Makeup Primer', 'Makeup primer is a skincare product that helps to prepare the skin for makeup application, creating a smooth, even canvas that helps makeup adhere better and last longer.\n\nWhether you have oily, dry, or combination skin, makeup primer can help you achieve a flawless, long-lasting makeup look. With a variety of formulas available, including mattifying, hydrating, and blurring, you can find the perfect makeup primer to suit your skin type and specific concerns.\n\nIn addition to extending the wear time of your makeup, makeup primer also helps to blur imperfections, minimize the appearance of pores, and create a smooth, seamless finish. By applying makeup primer after moisturizer and before foundation, you can create a flawless base that looks and feels like silk.\n\nWhen choosing a makeup primer, it\'s important to consider factors such as your skin type, desired finish, and any specific concerns you may have. Whether you\'re looking for a primer that controls oil and shine, blurs imperfections and fine lines, or adds a radiant glow to the skin, there\'s a makeup primer out there for you.\n\nOverall, makeup primer is a makeup essential that can help you achieve a flawless, long-lasting makeup look that stays put from morning until night.', 25, '20.jpeg'),
(21, 'Makeup Setting Powder', 'Makeup setting powder is a makeup product that helps to set and mattify makeup, keeping it looking fresh and flawless all day long.\n\nWhether you have oily, dry, or combination skin, makeup setting powder can help you achieve a matte, shine-free finish that lasts. With a variety of formulas available, including loose, pressed, and translucent, you can find the perfect makeup setting powder to suit your needs and preferences.\n\nIn addition to controlling oil and shine, makeup setting powder also helps to blur imperfections, minimize the appearance of pores, and create a smooth, seamless finish. By applying makeup setting powder to the T-zone and other areas prone to oiliness, you can help your makeup stay put and look fresh for hours on end.\n\nWhen choosing a makeup setting powder, it\'s important to consider factors such as your skin type, desired finish, and any specific concerns you may have. Whether you\'re looking for a lightweight powder that provides sheer coverage or a full-coverage powder that mattifies and blurs, there\'s a makeup setting powder out there for you.\n\nOverall, makeup setting powder is a makeup essential that can help you achieve a flawless, long-lasting makeup look that stays put from morning until night.', 18, '21.jpeg'),
(22, 'Makeup Brushes', 'Makeup brushes are essential tools for applying and blending makeup, helping you achieve a flawless, professional-looking finish.\n\nWhether you\'re applying foundation, blush, eyeshadow, or lipstick, makeup brushes can help you achieve precise, controlled application with minimal effort. With a variety of shapes and sizes available, including flat, fluffy, angled, and tapered, you can find the perfect makeup brushes to suit your needs and preferences.\n\nIn addition to providing precise application, makeup brushes also help to blend and diffuse product for a seamless, airbrushed finish. By using a combination of brushes, you can create a variety of makeup looks, from natural and understated to bold and glamorous.\n\nWhen choosing makeup brushes, it\'s important to consider factors such as the material, density, and shape of the bristles. Whether you prefer synthetic or natural bristles, densely packed or loosely packed brushes, there\'s a makeup brush out there for you.\n\nOverall, makeup brushes are essential tools that can help you achieve flawless makeup application and unleash your creativity.', 30, '22.jpeg'),
(23, 'Lip Liner', 'Lip liner is a makeup product that helps to define and shape the lips, creating a more polished and long-lasting lip look.\n\nWhether you\'re wearing lipstick, lip gloss, or going for a natural, nude look, lip liner can help you achieve the perfect pout. With a variety of shades available, ranging from neutral to bold, you can find the perfect lip liner to match your lip color and personal style.\n\nIn addition to defining the lips, lip liner also helps to prevent feathering and fading, keeping your lip color looking fresh and vibrant all day long. By outlining the lips and filling them in with lip liner before applying lipstick or lip gloss, you can create a more defined, sculpted lip look that lasts.\n\nWhen choosing a lip liner, it\'s important to consider factors such as the formula, texture, and desired level of pigmentation. Whether you\'re looking for a creamy pencil that glides on smoothly or a long-wearing formula that stays put for hours, there\'s a lip liner out there for you.\n\nOverall, lip liner is a makeup essential that can help you achieve a perfect, long-lasting lip look that enhances your natural beauty.', 10, '23.jpeg'),
(24, 'Makeup Wipes', 'Makeup wipes are disposable cleansing cloths that help to remove makeup, dirt, and impurities from the skin, leaving it clean, refreshed, and hydrated.\n\nWhether you\'re traveling, on the go, or simply need a quick and easy way to remove makeup, makeup wipes are a convenient and effective solution. With a variety of formulas available, including micellar-infused, oil-free, and biodegradable, you can find the perfect makeup wipes to suit your needs and preferences.\n\nIn addition to removing makeup, makeup wipes also help to cleanse and purify the skin, removing dirt, oil, and impurities that can clog pores and lead to breakouts. By gently wiping makeup wipes over the face and eyes, you can achieve a clean, fresh complexion that looks and feels revitalized.\n\nWhen choosing makeup wipes, it\'s important to consider factors such as your skin type, specific concerns, and desired results. Whether you\'re looking for a gentle formula that\'s suitable for sensitive skin or a powerful formula that can remove waterproof makeup, there\'s a makeup wipe out there for you.\n\nOverall, makeup wipes are a skincare essential that can help you achieve clean, clear skin and maintain a healthy, radiant complexion.', 7, '24.jpeg'),
(25, 'Makeup Organizer', 'Makeup organizer is a storage solution that helps to keep your makeup collection neat, tidy, and easily accessible, making it easy to find and use your favorite products.\n\nWhether you have a large makeup collection or just a few essentials, makeup organizer can help you keep everything organized and within reach. With a variety of designs available, including drawers, trays, and dividers, you can find the perfect makeup organizer to suit your needs and preferences.\n\nIn addition to providing storage and organization, makeup organizer also helps to protect your makeup from damage, spills, and accidents. By keeping your makeup securely stored in a makeup organizer, you can ensure that your favorite products stay safe and intact, no matter where life takes you.\n\nWhen choosing a makeup organizer, it\'s important to consider factors such as size, material, and features. Whether you\'re looking for a compact organizer that fits neatly on your vanity or a spacious organizer that holds all of your essentials, there\'s a makeup organizer out there for you.\n\nOverall, makeup organizer is an essential accessory that helps you stay organized, protect your makeup, and make getting ready a breeze.', 30, '25.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `description`, `img`) VALUES
(1, 'Nguyễn Thúc Thuỳ Tiên', 'This lipstick is a game-changer! The color is rich and vibrant, with a smooth, creamy texture that glides effortlessly onto the lips. It provides long-lasting wear without drying out the lips, thanks to its hydrating formula enriched with nourishing ingredients like vitamin E and shea butter. Plus, the sleek packaging makes it easy to carry around for touch-ups throughout the day. Definitely my new go-to for a bold and beautiful pout!', 'user1.img'),
(2, 'Mai Corn', 'I\'m absolutely loving this eyebrow pencil! The formula is smooth and creamy, making it effortless to create precise and defined brows. Plus, the built-in spoolie brush at the other end is super handy for blending and shaping. It stays put all day without smudging or fading, giving me perfectly groomed brows from morning to night. Definitely my new holy grail eyebrow product!', 'user2.img'),
(3, 'Phương Khánh', 'Impressed with the quality of your customer service! The staff is very attentive and friendly, always ready to address my inquiries with care and professionalism. Their support has helped resolve all my issues quickly and effectively. This truly stands out as a highlight in my experience, and I will definitely continue to support your services in the future!', 'user3.img'),
(4, 'Taylor Swift', 'This beauty tool set is a must-have! It includes everything you need for flawless makeup application and skincare. The brushes are soft and blend makeup seamlessly, while the precision tweezers and eyelash curler help achieve a polished look. The compact design makes it perfect for travel or everyday use, and the quality is top-notch. Whether you\'re a makeup enthusiast or just starting out, this beauty tool set is a game-changer!', 'user4.img'),
(5, 'Anne Hathaway', 'This beauty tool set is absolutely stunning! From the sleek design to the high-quality materials, every aspect of this set exudes elegance. The brushes are luxuriously soft and perfect for blending makeup effortlessly. The included tools like tweezers and eyelash curlers are not only beautiful but also functional, helping to achieve flawless results. It\'s a true pleasure to use such beautifully crafted tools in my beauty routine. This set would make a fabulous addition to anyone\'s collection!', 'user5.img');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
