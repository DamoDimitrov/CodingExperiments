CREATE DATABASE furniture_factory;

USE furniture_factory;

CREATE TABLE products
(
    id                INT AUTO_INCREMENT PRIMARY KEY,
    product_name      VARCHAR(50) UNIQUE NOT NULL,
    short_description VARCHAR(250)       NOT NULL,
    weight            DECIMAL(10, 2)     NOT NULL,
    barcode           BIGINT UNIQUE      NOT NULL,
    price             DECIMAL(10, 2)     NOT NULL
);

CREATE TABLE customers
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    company_name   VARCHAR(50) UNIQUE NOT NULL,
    address        VARCHAR(80)        NOT NULL,
    financial_id   VARCHAR(50) UNIQUE NOT NULL,
    vat_number     VARCHAR(50) UNIQUE NOT NULL,
    contact_person VARCHAR(80)        NOT NULL

);

CREATE TABLE orders
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    date         DATE           NOT NULL,
    product_id   INT            NOT NULL,
    quantity     INT            NOT NULL,
    customer_id  INT            NOT NULL,
    order_number INT UNIQUE     NOT NULL,
    total_price  DECIMAL(10, 2) NOT NULL,

    CONSTRAINT fk_orders_products
        FOREIGN KEY (product_id)
            REFERENCES products (id),

    CONSTRAINT fk_orders_customers
        FOREIGN KEY (customer_id)
            REFERENCES customers (id)
);

INSERT INTO `customers`
VALUES ('1', 'Ebert Inc', '819 Giovanna Junctions\nSouth Rosellaview, TX 04033', '3', '9591369', '001.745.8145'),
       ('2', 'Mayer and Sons', '6563 Bartell View\nEast Gerardoberg, RI 85576', '79', '4794', '01643940264'),
       ('3', 'Stokes and Sons', '32377 Isabella Gardens\nSouth Kyle, NE 94144', '499', '15', '1-806-633-6269x969'),
       ('4', 'Torp, Pollich and DuBuque', '09711 Lemke Viaduct Suite 678\nNorth Ilenestad, PA 42723', '6', '3798',
        '(947)392-3081'),
       ('5', 'Zemlak, Mertz and Collins', '1171 Gottlieb Drive\nEast Micahhaven, CA 89174', '988', '82',
        '293.833.4137'),
       ('6', 'Koelpin, Osinski and Becker', '1372 Jacinto Walk Apt. 010\nPort Ralphville, MT 48057-6087', '1607',
        '5211', '(829)287-6882x0688'),
       ('7', 'Boyle PLC', '55661 Auer Springs Apt. 339\nWest Liam, MT 84359', '76', '693430', '1-419-992-7820x28589'),
       ('8', 'Vandervort LLC', '3608 Franecki Valleys Apt. 812\nStrackeshire, IN 20864', '627', '4170', '198.810.3823'),
       ('9', 'Price, Reynolds and Walker', '83044 Gerard Branch\nWest Yesenia, AR 69102', '78', '', '03711154540'),
       ('10', 'Bode, Blick and Osinski', '5174 Magnus Lock Suite 851\nIzabellaville, AL 67183', '375', '49810',
        '752.228.9796x846'),
       ('11', 'Hoeger, Mraz and Erdman', '56024 Goldner Valley\nO\Keefeton, NC 41307-1551', '17189751', '7596',
        '812.688.4186x4642'),
       ('12', 'Kreiger LLC', '887 Schiller Extension Apt. 025\nNew Murltown, VT 39214', '887507552', '9',
        '749.006.3202'),
       ('13', 'Gleichner and Sons', '134 Mante Courts Apt. 704\nLake Jacklyntown, ID 72900', '90', '98',
        '(673)423-1068x129'),
       ('14', 'Schneider-Gusikowski', '04424 Fanny Overpass Suite 772\nEast Gabriellebury, MS 34322-1526', '666045',
        '38327098', '1-983-781-9615x934'),
       ('15', 'Olson-Muller', '04035 Hermiston Walks Suite 449\nNew Marlenport, GA 69740', '17867043', '269298',
        '(451)930-4821'),
       ('16', 'Thiel-Marquardt', '433 Bailey Divide Suite 423\nKulasland, IN 54596', '66', '712271184',
        '(495)065-6661x98008'),
       ('17', 'Hoppe-Dicki', '645 Stoltenberg Views\nCraigburgh, NE 26182', '8', '85591450', '785-961-6231'),
       ('18', 'Rippin, Torphy and Bahringer', '2411 Stanton Gateway Apt. 302\nTracemouth, MN 44812', '72', '20',
        '+90(1)2505333667'),
       ('19', 'Hyatt LLC', '78565 Aubrey Turnpike Apt. 823\nLake Leraview, MT 96669-6673', '479139698', '4538305',
        '1-878-200-3888x9811'),
       ('20', 'Romaguera and Sons', '968 Jaclyn Forge\nLake Joanyland, ID 00477', '76852', '1303', '06499002270');

INSERT INTO `products`
VALUES ('1', 'possimus',
        'Quis sapiente error aut ipsum facere. Nihil rem voluptatem error ad non. Ducimus exercitationem qui debitis assumenda non minus.',
        '56965.09', '48583', '48.07'),
       ('2', 'laboriosam',
        'Iure eaque tempora nostrum non illum vel. Sapiente voluptate veritatis consequuntur officia. Nobis sequi et qui repellendus asperiores maiores facere.',
        '76803665.67', '705875', '17018527.50'),
       ('3', 'et', 'Totam cum atque ea explicabo omnis. Hic exercitationem vero reprehenderit culpa.', '73.10', '59',
        '79.08'),
       ('4', 'aliquam',
        'Est non non veniam fuga labore impedit. Nobis hic quia ipsa quasi quasi explicabo. Nulla aut nulla rem magnam. Non voluptas mollitia et quas non.',
        '3877730.90', '7', '143987.48'),
       ('5', 'voluptate',
        'Ratione sit autem sit dolores est. Odio earum unde voluptas quia sunt. Quod ex expedita quae doloribus doloribus neque qui nam. In quidem quibusdam praesentium totam deleniti.',
        '1541.08', '82', '1.00'),
       ('6', 'ut', 'Saepe rerum quo ut explicabo. Iusto nostrum odit aut. Reiciendis accusamus dolorem quis et.',
        '373369.00', '251419', '8887385.80'),
       ('7', 'ex',
        'Rem quo quod dolor repudiandae atque. Consequatur omnis nostrum rerum. Id sint modi quo eos. Ut maiores nobis soluta unde. Excepturi temporibus voluptate amet accusantium odio perferendis tenetur.',
        '99999999.99', '78', '96471.78'),
       ('8', 'eius', 'Dolores non esse rerum et autem aut. Est tempora qui et qui. Est tenetur et cumque voluptas.',
        '0.00', '226498995', '31.83'),
       ('9', 'nihil',
        'Mollitia et quam quia aut. Nam beatae recusandae id voluptas. Qui eum facere quibusdam modi ut sint maiores.',
        '1708507.90', '94547', '6.30'),
       ('10', 'quasi',
        'Quis ex excepturi minima minima maiores. Quaerat numquam esse sed dolorem quas minima molestiae. Sint ea culpa qui aperiam delectus nihil distinctio. Minus aut nisi molestiae aliquid.',
        '4.30', '424', '0.00'),
       ('11', 'voluptas',
        'Quisquam vel et et quis est. Accusamus quia nihil velit nesciunt sit ea quasi molestias. Sit ad soluta et illum et.',
        '0.42', '423578111', '11.48'),
       ('12', 'quaerat',
        'Autem fugit ut aut sed hic asperiores. Quas illum aliquam dolorum aliquid voluptas. Temporibus est deleniti maxime reiciendis ut necessitatibus. Odit quia fugit iste dolores at occaecati.',
        '39526.22', '24', '0.64'),
       ('13', 'quae',
        'Consectetur aut veritatis est vel itaque quia. Harum nobis officia doloribus reprehenderit. Totam rerum eos consequatur at laboriosam.',
        '24.43', '5', '8787342.70'),
       ('14', 'omnis',
        'Nihil facilis delectus voluptatem doloribus. Reprehenderit ea occaecati sit fugiat vero inventore. Ipsam qui modi officia consequatur neque architecto fugiat aliquam. Esse ut enim fuga soluta.',
        '3698084.58', '1363', '68.90'),
       ('15', 'ut', 'Aut accusantium voluptatum vitae repellendus in. Quibusdam illo pariatur laudantium velit iste.',
        '159872.38', '5', '684968.60'),
       ('16', 'sequi', 'Nulla nulla voluptatem nam iure repudiandae. Atque ipsum dolor delectus ab.', '36544.06',
        '711811', '45.00'),
       ('17', 'mollitia',
        'Occaecati beatae blanditiis autem dignissimos facilis qui. Dolorum et qui non aut. Sint voluptas veritatis eos animi ab quis nobis.',
        '2820011.58', '30410736', '343994.00'),
       ('18', 'provident',
        'Ipsam saepe expedita officia sit est. Eum impedit tempore molestiae illo. Consectetur necessitatibus neque totam assumenda dolorem. Labore quos ducimus aut mollitia aspernatur.',
        '25.14', '68247', '102854.74'),
       ('19', 'temporibus',
        'Ut ab quaerat aut incidunt. Voluptatum officiis dicta rerum aut non ut. Ad pariatur sapiente tenetur sit. Omnis quasi in aut eius quas. Amet consequatur adipisci quo ex modi assumenda.',
        '0.00', '7', '99999999.99'),
       ('20', 'aspernatur', 'Illo sit ab modi quo quaerat. Optio qui pariatur sunt consequatur.', '1588.80', '20846',
        '48260.07'),
       ('21', 'nostrum',
        'Omnis est hic dignissimos dolores ut reprehenderit. Harum aut est sit et occaecati nulla. Rerum dolor numquam sit. At dolorem sint molestiae qui omnis earum.',
        '45675759.60', '21816', '105895.77'),
       ('22', 'officia', 'Ab saepe qui repellat quae magnam. Nam officia quia soluta explicabo reprehenderit sint.',
        '50.48', '13835463', '0.00'),
       ('23', 'est',
        'Temporibus ipsam consequuntur quidem enim omnis rerum id. Cum suscipit rerum ipsa. Officia quis commodi adipisci blanditiis. Sunt provident corporis qui officia delectus eligendi. Eligendi dolores pariatur asperiores dicta at ipsum.',
        '3.56', '26316', '1676.31'),
       ('24', 'architecto',
        'Officiis soluta debitis repellendus et. Expedita debitis cumque id minima eius rerum. Aliquid et repellendus perspiciatis totam.',
        '0.00', '597066116', '374.04'),
       ('25', 'vel',
        'Perferendis animi neque necessitatibus optio vel. Ratione est blanditiis harum dolorum. Unde eum voluptatum vero alias itaque.',
        '2485744.03', '397', '1251125.47'),
       ('26', 'at',
        'Sequi laudantium fugiat ut doloremque error maxime. Cupiditate exercitationem laboriosam qui ut. Excepturi pariatur sit laudantium repellendus eum et provident.',
        '646.41', '0', '1971211.73'),
       ('27', 'cumque',
        'Eaque illo nemo nihil sit. Laboriosam repellat repellendus deserunt distinctio expedita. Aut officia delectus voluptates qui est quia. Non sint eveniet ab.',
        '48278.88', '85550', '1689.14'),
       ('28', 'enim',
        'Ut ut perspiciatis sed quibusdam magnam voluptatem voluptatum. Nisi sit nulla minima assumenda inventore minus similique. Non aut voluptatem ducimus tempore velit cumque.',
        '144446.80', '0', '99999999.99'),
       ('29', 'neque',
        'Autem sed adipisci molestiae voluptas sequi voluptas vitae. Nisi eveniet est dolores quae placeat et illo.',
        '99999999.99', '3609817', '6217.64'),
       ('30', 'aut',
        'Officia quos non natus aspernatur rerum harum. Eos harum et ipsa expedita id aut iure. Aut corrupti voluptatem inventore temporibus. Voluptatem veritatis corporis doloremque in qui rerum ut.',
        '18619374.37', '5466', '242.26'),
       ('31', 'voluptatem',
        'Modi ab est error sunt aut expedita. Voluptates quisquam reprehenderit cumque assumenda impedit dicta sunt. Blanditiis sunt et hic.',
        '246306.48', '791470', '40564964.19'),
       ('32', 'sed',
        'Illo necessitatibus explicabo vel consectetur aut. Nemo est reiciendis quia. Quo incidunt numquam vel quo quis.',
        '54007773.94', '73212389', '26049.87'),
       ('33', 'aut',
        'Et aut officia consectetur minus atque tempora. Quisquam quo ratione quasi dolorum eius. Nulla atque omnis ut.',
        '17462826.40', '994', '0.00'),
       ('34', 'reiciendis',
        'Nobis voluptatem iure dolor ut odio. Eum est accusamus esse et ratione. Mollitia reprehenderit sint voluptatibus autem rerum est commodi dolorum.',
        '3.19', '696206', '569028.42'),
       ('35', 'et',
        'Aperiam harum fugiat et porro quasi sit tenetur. Veniam ut quis nisi id adipisci. Velit fugiat voluptatem enim est laborum quia. Facere ab repudiandae quos sapiente laboriosam.',
        '54665.75', '626', '99999999.99'),
       ('36', 'est',
        'Aut officia suscipit aut consequatur ipsa sit beatae debitis. Culpa hic assumenda odit quod et. Aperiam nihil delectus commodi consequatur officia voluptatem aut. Dolorem sint voluptatem fuga rerum accusantium est nostrum.',
        '9217714.99', '8', '42211.98'),
       ('37', 'molestias', 'Quaerat sit ratione aliquam. Eligendi expedita voluptatibus in quae sint.', '22960.82', '5',
        '54573752.91'),
       ('38', 'quibusdam', 'Nobis quibusdam nam asperiores aut. Et dolorum ea est natus et aut enim.', '1896006.43',
        '459', '0.00'),
       ('39', 'nemo',
        'Tempora expedita culpa ipsa commodi. Quod molestias reiciendis similique dolor quos eius. Nostrum qui aperiam asperiores unde necessitatibus.',
        '6298.00', '5', '560.95'),
       ('40', 'deleniti',
        'Voluptatem dolores et omnis iure ut recusandae. Ipsam nihil sed numquam ut expedita rerum. Mollitia quas fuga quaerat quis dolores.',
        '194036.21', '600398596', '23.16'),
       ('41', 'voluptas',
        'Dolorum et dolorum fuga. Ex rerum et dolores qui explicabo quae eum. Ducimus quam et consequatur dolorum quia veritatis maiores sed.',
        '8409.79', '562', '3.15'),
       ('42', 'quae',
        'Quibusdam velit pariatur quo quis. Quibusdam aut eum perferendis repudiandae qui quia ipsa delectus. Natus esse nesciunt nesciunt ex et.',
        '35793649.20', '189756826', '952.12'),
       ('43', 'at',
        'Dolorem magni qui molestiae nobis quod voluptatem. Et est ut accusamus beatae et placeat sit. Laboriosam qui quam dolores laudantium.',
        '0.00', '977118', '957610.76'),
       ('44', 'illum',
        'Porro facere repellat provident est ut. Est ad modi consectetur voluptatibus dolores. Deleniti minus quas quisquam et voluptatem. Cupiditate sed fuga qui maxime.',
        '99999999.99', '841242150', '99999999.99'),
       ('45', 'repellat',
        'Natus animi ducimus minima. Animi aut ad ullam aut consequatur ut non nobis. Aut sit eius voluptatem quia voluptate qui unde quod.',
        '82986.40', '26205465', '237.67'),
       ('46', 'et',
        'Consequatur temporibus molestiae distinctio perspiciatis architecto delectus voluptatum. Est est ut possimus autem. Neque saepe tempora sed assumenda eligendi omnis quis cupiditate.',
        '99999999.99', '4969495', '0.00'),
       ('47', 'et',
        'Iure sit accusamus eaque dolorum soluta quaerat. Nobis deserunt et eum nemo nihil eos natus. Nihil ipsa alias amet.',
        '8293983.64', '71038798', '600866.39'),
       ('48', 'provident',
        'Quibusdam ex omnis possimus accusantium enim. Doloremque amet error qui veritatis qui aperiam eos. Consequuntur eius incidunt sit aut. Facilis nam quam et vel adipisci adipisci. Est natus optio veniam porro est.',
        '416032.94', '8395563', '52.10'),
       ('49', 'quia',
        'Suscipit voluptas consequatur sint quis deserunt. Nam maxime consequuntur omnis eos sint non. Voluptatem ea corporis ipsum iste. Voluptatibus amet quia officiis aspernatur rerum. Qui nihil labore eum asperiores est in sed consequatur.',
        '13736.91', '817188746', '1.74'),
       ('50', 'sint',
        'Sit quasi ut odit veniam ullam deleniti. Rerum placeat voluptatum voluptatem aut maxime maiores. Voluptatem quibusdam minima nostrum ut sint cumque.',
        '15.68', '6665447', '558.40');



INSERT INTO `orders`
VALUES ('1', '2016-08-31', '1', '281341', '1', '9', '40316995.06'),
       ('2', '1970-01-01', '2', '230', '2', '754190', '23758.62'),
       ('3', '1977-10-26', '3', '441847974', '3', '138522', '0.00'),
       ('4', '1983-06-08', '4', '265884', '4', '279', '80528.23'),
       ('5', '1987-06-24', '5', '62273', '5', '5', '1012.00'),
       ('6', '2016-09-22', '6', '0', '6', '592379787', '61350.43'),
       ('7', '1988-08-08', '7', '233', '7', '4855', '74.51'),
       ('8', '1996-08-24', '8', '727', '8', '8913156', '1.30'),
       ('9', '1986-01-24', '9', '45539755', '9', '2', '1.71'),
       ('10', '1981-09-20', '10', '461040', '10', '587723', '48488773.87'),
       ('11', '1984-01-13', '11', '3312', '11', '25863', '99999999.99'),
       ('12', '2004-12-09', '12', '0', '12', '501515968', '5.33'),
       ('13', '1975-06-12', '13', '0', '13', '896790920', '9178090.00'),
       ('14', '2010-11-19', '14', '150596958', '14', '7976', '572472.00'),
       ('15', '1978-05-22', '15', '149380832', '15', '613126734', '1440.65'),
       ('16', '1970-03-08', '16', '0', '16', '933', '19.91'),
       ('17', '2001-02-05', '17', '0', '17', '941', '0.00'),
       ('18', '1978-07-04', '18', '7017', '18', '472970', '255.86'),
       ('19', '2019-07-29', '19', '3613', '19', '27267051', '1767.09'),
       ('20', '2007-10-05', '20', '38667', '20', '0', '408905.72'),
       ('21', '2002-04-19', '21', '5', '1', '6786', '99999999.99'),
       ('22', '1992-09-20', '22', '440', '2', '74819679', '1382141.66'),
       ('23', '1983-10-17', '23', '0', '3', '2810576', '99999999.99'),
       ('24', '2004-05-25', '24', '0', '4', '56202580', '1533855.64'),
       ('25', '2007-04-01', '25', '172', '5', '322180000', '1837.82'),
       ('26', '2007-10-20', '26', '273', '6', '16', '519.23'),
       ('27', '1973-07-13', '27', '2', '7', '210504218', '99999999.99'),
       ('28', '1998-01-23', '28', '749', '8', '886', '401.60'),
       ('29', '1975-01-10', '29', '24409467', '9', '903915', '0.00'),
       ('30', '1982-09-13', '30', '0', '10', '85705', '4.16'),
       ('31', '1973-12-24', '31', '591', '11', '55803', '1171.90'),
       ('32', '1986-02-27', '32', '75509', '12', '6', '1259.96'),
       ('33', '1994-04-06', '33', '222133446', '13', '5103060', '1818870.99'),
       ('34', '2011-10-05', '34', '8026', '14', '2995032', '6232.92'),
       ('35', '1971-05-13', '35', '0', '15', '588261329', '9861.70'),
       ('36', '1992-02-15', '36', '268', '16', '61', '1.54'),
       ('37', '2010-07-01', '37', '0', '17', '913190163', '5922372.76'),
       ('38', '2017-11-11', '38', '18458', '18', '360852204', '51128460.25'),
       ('39', '1974-05-11', '39', '234', '19', '13', '439823.10'),
       ('40', '2017-12-07', '40', '0', '20', '37690', '64513.84'),
       ('41', '1986-06-08', '41', '135424', '1', '216', '99999999.99'),
       ('42', '1990-04-05', '42', '13', '2', '7', '78411.86'),
       ('43', '2005-06-13', '43', '2046430', '3', '22970406', '704818.85'),
       ('44', '1994-03-25', '44', '8', '4', '479228380', '19453743.90'),
       ('45', '2003-11-05', '45', '1029', '5', '96356', '6801.10'),
       ('46', '2015-01-06', '46', '48492584', '6', '549345', '485.00'),
       ('47', '2017-07-14', '47', '48', '7', '371420247', '0.00'),
       ('48', '2010-09-08', '48', '85861', '8', '48', '825433.90'),
       ('49', '2008-07-03', '49', '133786', '9', '39275', '2483.99'),
       ('50', '1980-03-10', '50', '16682274', '10', '3', '27355721.16');

SELECT product_name
FROM products
WHERE product_name LIKE '%a%';

SELECT products.product_name, products.price, customers.company_name
FROM products
         LEFT JOIN orders
                   ON products.id = orders.product_id
         LEFT JOIN customers
                   ON orders.customer_id = customers.id
WHERE order_number BETWEEN 200 AND 500;

SELECT company_name
FROM customers
JOIN orders
 ON customers.id = orders.customer_id
WHERE orders.date > '2017-11-10' AND orders.date < '2017-12-10';

SELECT SUM(quantity) AS 'quantity'
FROM orders
WHERE orders.date > '2017-11-10' AND orders.date < '2017-12-10';









