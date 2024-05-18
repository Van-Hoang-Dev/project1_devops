-- Create the table
CREATE TABLE banners (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    image VARCHAR(255)
);

-- Create the products table
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    price DOUBLE,
    image TEXT
);

CREATE TABLE beauty_reviews (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(1000),
    image VARCHAR(255)
);

CREATE TABLE configs (
    id INT PRIMARY KEY,
    key_name VARCHAR(50),
    value TEXT
);


-- Insert the data
INSERT INTO banners (id, name, description, image) VALUES
(1, 'beauty kit', 'A beauty kit typically comprises a range of beauty and skincare products aimed at enhancing beauty and maintaining healthy skin. It includes items such as foundation, lipstick, blush, mascara, and eyeliner for makeup application, as well as skincare products like cleansers, moisturizers, masks, and sunscreen. Additionally, haircare products such as shampoo, conditioner, and styling gel may be included in the kit. Makeup tools like brushes, sponges, and tweezers are also commonly included. With the versatile combination of compact and convenient products, a beauty kit is the perfect choice for individuals to maintain and enhance their appearance on a daily basis.', 'banner1.jpeg'),
(2, 'A Beauty Tool Kit', '\"A beauty tool kit\" is a collection of beauty tools and accessories designed to aid in makeup application, skincare routines, and haircare tasks. These kits often include items such as makeup brushes, sponges, tweezers, eyelash curlers, mirrors, and hair styling tools like combs or hairbrushes. Beauty tool kits provide convenience and versatility for individuals to achieve their desired look effectively.', 'banner2.jpeg'),
(3, 'Skincare Products', '\"Skincare products\" are items designed to nourish, protect, and enhance the health and appearance of the skin. These products can include a wide range of items, such as cleansers, toners, moisturizers, serums, face masks, exfoliants, sunscreen, and specialized treatments like acne creams or anti-aging serums. Skincare products are essential for maintaining healthy skin, addressing specific skin concerns, and promoting a radiant complexion.', 'banner3.jpeg');

INSERT INTO configs (id, key_name, value) VALUES
    (1, 'PRODUCT', 'The premium products of this store blend exquisite quality and sophisticated design, creating an authentic shopping experience for discerning customers passionate about perfection.'),
    (2, 'ABOUT', 'Our beauty store offers a diverse range of premium skincare, makeup, and fragrance products designed to elevate your beauty routine. With a keen eye for quality and elegance, we carefully select each item to ensure it meets our standards of excellence. Our knowledgeable staff are dedicated to providing personalized assistance and expert advice to help you find the perfect products for your individual needs. Step into our store and immerse yourself in a world of luxury where every detail is thoughtfully considered. Experience beauty like never before with our curated collection of high-end beauty essentials.'),
    (3, 'BEAUTIFLIE', 'Unlock the beauty of self-care with us, where every product is a testament to your inner glow. From nourishing skincare to captivating cosmetics, our brand is your partner in embracing your natural allure and radiance.'),
    (4, 'BEST_PRODUCT', 'Neutrogena Hydro Boost Water Gel Moisturizer \n MAC Ruby Woo Lipstick \n Maybelline Great Lash Mascara \n NARS Orgasm Blush \n Cetaphil Gentle Skin Cleanser'),
    (5, 'ADDRESS', '53 Võ Văn Ngân, Linh Chiểu, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh'),
    (6, 'EMAIL', 'CD22TT11@gmail.tdc.edu.vn'),
    (7, 'PHONE_NUMBER', '0383277965');


INSERT INTO beauty_reviews (id, name, description, image) VALUES
    (1, 'Nguyễn Thúc Thuỳ Tiên', 'This lipstick is a game-changer! The color is rich and vibrant, with a smooth, creamy texture that glides effortlessly onto the lips. It provides long-lasting wear without drying out the lips, thanks to its hydrating formula enriched with nourishing ingredients like vitamin E and shea butter. Plus, the sleek packaging makes it easy to carry around for touch-ups throughout the day. Definitely my new go-to for a bold and beautiful pout!', 'user1.img'),
    (2, 'Mai Ngô', "I'm absolutely loving this eyebrow pencil! The formula is smooth and creamy, making it effortless to create precise and defined brows. Plus, the built-in spoolie brush at the other end is super handy for blending and shaping. It stays put all day without smudging or fading, giving me perfectly groomed brows from morning to night. Definitely my new holy grail eyebrow product!", 'user2.img'),
    (3, 'Phương Khánh', "Impressed with the quality of your customer service! The staff is very attentive and friendly, always ready to address my inquiries with care and professionalism. Their support has helped resolve all my issues quickly and effectively. This truly stands out as a highlight in my experience, and I will definitely continue to support your services in the future!", 'user3.img'),
    (4, 'Taylor Swift', "This beauty tool set is a must-have! It includes everything you need for flawless makeup application and skincare. The brushes are soft and blend makeup seamlessly, while the precision tweezers and eyelash curler help achieve a polished look. The compact design makes it perfect for travel or everyday use, and the quality is top-notch. Whether you're a makeup enthusiast or just starting out, this beauty tool set is a game-changer!", 'user4.img'),
    (5, 'Anne Hathaway', "This beauty tool set is absolutely stunning! From the sleek design to the high-quality materials, every aspect of this set exudes elegance. The brushes are luxuriously soft and perfect for blending makeup effortlessly. The included tools like tweezers and eyelash curlers are not only beautiful but also functional, helping to achieve flawless results. It's a true pleasure to use such beautifully crafted tools in my beauty routine. This set would make a fabulous addition to anyone's collection!", 'user5.img');

INSERT INTO products (id, name, description, price, image) VALUES
(1, 'makeup brush set', "A makeup brush set is an indispensable secret to achieving a flawless and natural-looking makeup application. This set includes a range of high-quality brushes, each designed specifically to apply and distribute cosmetics with precision and ease.\n\nIf you\'re seeking perfection in every layer of makeup, this brush set will be your invaluable companion. From smoothly applying foundation to sculpting and defining the face, each brush in the set is designed with a specific purpose and offers high precision.\n\nWith soft synthetic or natural bristles, each brush provides a comfortable feel during application and helps distribute cosmetics evenly on the skin. You\'ll easily create makeup techniques from natural to glamorous with just a few gentle brush strokes.\n\nNot only essential tools for daily makeup application, but the brush set also makes an ideal gift for anyone passionate about makeup or looking to enhance their makeup skills. With the versatility and variety of each brush, a makeup brush set is an undeniable investment for anyone aiming to achieve confident and radiant beauty.", 10.00, '1.jpeg'),
(2, 'Gucci lipstick', "Gucci Lipstick is an essential part of anyone\'s beauty collection, serving as the perfect accent for lips, creating focal points, and expressing personal style.\n\nA Gucci Lipstick is not just a makeup product; it\'s also a symbol of confidence and allure. \n\nThe color of Gucci Lipstick can be an expression of personality and emotion. From subtle nude tones to bold, captivating shades, each Gucci Lipstick tells its own story. When looking at a Gucci Lipstick, you can feel not only the beauty of the color but also the meticulousness and sophistication in every stroke of the product.\n\nThe texture of Gucci Lipstick is also crucial. A smooth, easy-to-apply Gucci Lipstick that doesn\'t dry out the lips will make them soft and more attractive. Moreover, the Gucci Lipstick formula provides moisture to the lips, helping to maintain their plumpness and softness throughout the day.\n\nThe scent of Gucci Lipstick is also an important factor. From seductive floral scents to refreshing fruity fragrances, each aroma brings a sense of comfort and freshness when applied.\n\nWith these unique characteristics, Gucci Lipstick is not just a makeup product but also a symbol of beauty and personal style.", 100.00, '2.jpeg'),
(3, 'Eyeshadow Palette', "An eyeshadow palette is a versatile and essential tool for creating endless eye makeup looks. With a variety of shades and finishes, an eyeshadow palette allows for creativity and experimentation.\n\nWhether you prefer natural, everyday looks or bold, dramatic statements, an eyeshadow palette has you covered. From matte neutrals to shimmering metallics, the possibilities are endless.\n\nAn eyeshadow palette typically includes a range of complementary shades that can be mixed and matched to create custom looks. With a combination of light, medium, and dark shades, you can easily transition from day to night.\n\nIn addition to providing color, eyeshadows also help to define and enhance the eyes. By strategically placing shadows on the lid, crease, and brow bone, you can create the illusion of larger, more awake eyes.\n\nOverall, an eyeshadow palette is a must-have for any makeup enthusiast. With its versatility and range of shades, it\'s the perfect tool for expressing your creativity and enhancing your natural beauty.", 50.00, '3.jpeg'),
(4, 'Foundation', "Foundation is a key component of any makeup routine, providing the perfect base for the rest of your makeup.\n\nWhether you prefer a light, natural coverage or a full-coverage finish, there\'s a foundation out there for you. With a variety of formulas available, including liquid, cream, powder, and stick, you can find the perfect foundation to suit your skin type and desired level of coverage.\n\nIn addition to evening out skin tone and covering imperfections, foundation also helps to create a smooth, flawless canvas for the rest of your makeup. By providing a base for other products to adhere to, foundation helps to extend the wear time of your makeup and prevent it from creasing or fading throughout the day.\n\nWhen choosing a foundation, it\'s important to consider factors such as your skin type, undertone, and desired finish. With the right foundation, you can achieve a natural, radiant complexion that looks and feels like your skin, only better.', 40.00, '4.jpeg'),
(5, 'Mascara', 'Mascara is a makeup essential that helps to define and enhance the lashes, making your eyes appear bigger, brighter, and more awake.\n\nWhether you prefer a natural, everyday look or a bold, dramatic effect, mascara can help you achieve the look you desire. With a variety of formulas and brushes available, you can find the perfect mascara to suit your needs and preferences.\n\nIn addition to adding volume and length to the lashes, mascara also helps to separate and define each lash, giving them a more fluttery, feathery appearance. By coating the lashes from root to tip, mascara helps to create the illusion of thicker, fuller lashes.\n\nWhen choosing a mascara, it\'s important to consider factors such as the formula, brush shape, and desired effect. Whether you\'re looking for a waterproof formula that can withstand sweat and tears or a lengthening formula that helps to elongate the lashes, there\'s a mascara out there for you.\n\nOverall, mascara is a makeup staple that can help to enhance your natural beauty and make your eyes the focal point of your look.", 20.00, '5.jpeg'),
(6, 'Concealer', "Concealer is a versatile makeup product that helps to camouflage imperfections, brighten the under-eye area, and create a flawless complexion.\n\nWhether you\'re dealing with dark circles, blemishes, or redness, concealer can help to hide a multitude of sins. With a variety of formulas available, including liquid, cream, and stick, you can find the perfect concealer to suit your needs and preferences.\n\nIn addition to covering imperfections, concealer also helps to brighten and highlight the under-eye area, making you look more awake and refreshed. By applying concealer to the inner corners of the eyes and blending it outwards, you can create a subtle, natural-looking highlight that helps to counteract darkness and shadows.\n\nWhen choosing a concealer, it\'s important to consider factors such as your skin type, undertone, and desired level of coverage. Whether you\'re looking for a lightweight formula that provides sheer coverage or a full-coverage formula that can cover even the most stubborn blemishes, there\'s a concealer out there for you.\n\nOverall, concealer is a makeup essential that can help you achieve a flawless complexion and boost your confidence.", 30.00, '6.jpeg')