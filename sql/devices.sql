-- Create a table to store information about mobile tablets
CREATE TABLE devices (
    device_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    brand VARCHAR(100),
    model VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    screen_size DECIMAL(4, 2),
    resolution VARCHAR(20),
    processor VARCHAR(100),
    storage_capacity INT,
    ram INT,
    operating_system VARCHAR(50),
    camera_resolution VARCHAR(20),
    battery_capacity INT,
    connectivity VARCHAR(100),
    weight DECIMAL(6, 2),
    dimensions VARCHAR(50),
    release_date DATE,
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO devices (name, brand, model, description, price, stock_quantity, screen_size, resolution, processor, storage_capacity, ram, operating_system, camera_resolution, battery_capacity, connectivity, weight, dimensions, release_date, image_url)
VALUES
    ('iPad Pro 12.9-inch', 'Apple', '2021', 'The latest iPad Pro with M1 chip and Liquid Retina XDR display.', 1099.99, 50, 12.9, '2732 x 2048', 'Apple M1', 128, 8, 'iPadOS 15', '12 MP', 10090, 'Wi-Fi, 5G', 1.41, '280.6 x 214.9 x 5.9 mm', '2021-05-21', 'https://example.com/ipad-pro.jpg'),
    ('Samsung Galaxy Tab S7+', 'Samsung', '2020', 'Powerful Android tablet with S Pen support and AMOLED display.', 849.99, 30, 12.4, '2800 x 1752', 'Qualcomm Snapdragon 865+', 256, 8, 'Android 11', '13 MP', 10090, 'Wi-Fi, 4G', 0.58, '285 x 185 x 5.7 mm', '2020-08-21', 'https://example.com/galaxy-tab-s7.jpg'),
    ('Microsoft Surface Pro 7', 'Microsoft', '2019', 'Versatile 2-in-1 laptop with detachable keyboard and Windows 10.', 799.99, 20, 12.3, '2736 x 1824', 'Intel Core i5', 128, 8, 'Windows 10', '8 MP', 7600, 'Wi-Fi', 1.70, '292 x 201 x 8.5 mm', '2019-10-22', 'https://example.com/surface-pro-7.jpg'),
    ('Samsung Galaxy Tab A7', 'Samsung', '2020', 'Affordable Android tablet with a large display for entertainment.', 229.99, 60, 10.4, '2000 x 1200', 'Qualcomm Snapdragon 662', 32, 3, 'Android 10', '8 MP', 7040, 'Wi-Fi, 4G', 0.48, '247.6 x 157.4 x 7 mm', '2020-09-11', 'https://example.com/galaxy-tab-a7.jpg'),
    ('Amazon Fire HD 10', 'Amazon', '2021', 'Budget-friendly tablet for media consumption with Alexa integration.', 149.99, 80, 10.1, '1920 x 1200', 'Octa-core MediaTek', 32, 3, 'Fire OS 7', '5 MP', 6500, 'Wi-Fi, 4G', 0.47, '247 x 166 x 9.2 mm', '2021-04-27', 'https://example.com/fire-hd-10.jpg'),
    ('Google Pixel Slate', 'Google', '2018', 'Premium Chrome OS tablet with a detachable keyboard.', 799.99, 15, 12.3, '3000 x 2000', 'Intel Core i5', 128, 8, 'Chrome OS', '8 MP', 4856, 'Wi-Fi', 1.6, '290.9 x 202 x 7 mm', '2018-12-04', 'https://example.com/pixel-slate.jpg'),
    ('Lenovo Tab M10 HD', 'Lenovo', '2021', 'Entry-level Android tablet for basic tasks and entertainment.', 119.99, 40, 10.1, '1280 x 800', 'MediaTek Helio P22T', 32, 2, 'Android 10', '5 MP', 5000, 'Wi-Fi', 0.47, '243 x 162.2 x 8.2 mm', '2021-03-15', 'https://example.com/tab-m10-hd.jpg'),
    ('Huawei MatePad Pro', 'Huawei', '2020', 'High-end Android tablet with a Kirin 990 processor and stylus support.', 549.99, 25, 10.8, '2560 x 1600', 'HiSilicon Kirin 990', 128, 6, 'Android 10', '13 MP', 7250, 'Wi-Fi, 4G', 0.46, '246 x 159 x 7.2 mm', '2020-04-23', 'https://example.com/matepad-pro.jpg'),
    ('Asus ZenPad 3S 10', 'Asus', '2016', 'Slim and stylish Android tablet with a vivid 2K display.', 299.99, 10, 9.7, '2048 x 1536', 'MediaTek MT8176', 64, 4, 'Android 6.0', '8 MP', 5900, 'Wi-Fi', 0.95, '240.5 x 163.7 x 5.8 mm', '2016-07-12', 'https://example.com/zenpad-3s-10.jpg'),
    ('Sony Xperia Tablet Z4', 'Sony', '2015', 'Waterproof Android tablet with a stunning 2K display.', 499.99, 5, 10.1, '2560 x 1600', 'Qualcomm Snapdragon 810', 32, 3, 'Android 5.0', '8.1 MP', 6000, 'Wi-Fi', 0.39, '254 x 167 x 6.1 mm', '2015-06-03', 'https://example.com/xperia-tablet-z4.jpg');