-- Seed Users
INSERT INTO users (id, username, password, full_name, email, phone, role) VALUES
(1, 'customer1', 'password123', 'John Doe', 'john@example.com', '9876543210', 'CUSTOMER'),
(2, 'restaurant_admin', 'admin123', 'Mario Rossi', 'mario@bistro.com', '9876543211', 'RESTAURANT_ADMIN')
ON DUPLICATE KEY UPDATE username=username;

-- Seed Restaurants
INSERT INTO restaurants (id, name, description, cuisine_type, rating, image_url, address, phone, owner_id) VALUES
(1, 'Gourmet Pizza Bistro', 'Authentic Neapolitan wood-fired pizzas and homemade artisan pasta.', 'Italian', 4.8, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600', '124 Olive Garden Way, Foodville', '+1 555-0192', 2),
(2, 'Urban Spice Kitchen', 'Rich Indian curries, tandoori grills, and aromatic biryanis.', 'Indian', 4.7, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600', '45 Royal Saffron Street', '+1 555-0143', 2),
(3, 'Sakura Sushi & Ramen', 'Fresh sashimi, signature rolls, and hot steaming tonkotsu ramen.', 'Japanese', 4.9, 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=600', '88 Cherry Blossom Lane', '+1 555-0188', 2),
(4, 'The Craft Burger Co.', 'Smash burgers with wagyu beef, truffle fries, and thick craft shakes.', 'American', 4.6, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600', '12 Sunset Boulevard', '+1 555-0112', 2)
ON DUPLICATE KEY UPDATE name=name;

-- Seed Menu Items for Gourmet Pizza Bistro (id: 1)
INSERT INTO menu_items (id, restaurant_id, name, description, price, category, is_available, image_url) VALUES
(1, 1, 'Margherita Supreme', 'Fresh mozzarella, San Marzano tomato sauce, fresh basil, and extra virgin olive oil.', 14.99, 'Pizzas', TRUE, 'https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?w=500'),
(2, 1, 'Truffle & Wild Mushroom Pizza', 'White sauce, roasted wild mushrooms, mozzarella, fontina, and black truffle oil.', 18.50, 'Pizzas', TRUE, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500'),
(3, 1, 'Classic Fettuccine Alfredo', 'Handmade fettuccine pasta in rich parmigiano reggiano cream sauce.', 15.25, 'Pastas', TRUE, 'https://images.unsplash.com/photo-1645112411341-6c4fd023714a?w=500'),
(4, 1, 'Tiramisu Tradizionale', 'Classic Italian dessert with espresso-soaked ladyfingers and creamy mascarpone.', 7.99, 'Desserts', TRUE, 'https://images.unsplash.com/photo-1571877227200-a0d98ea607e9?w=500')
ON DUPLICATE KEY UPDATE name=name;

-- Seed Menu Items for Urban Spice Kitchen (id: 2)
INSERT INTO menu_items (id, restaurant_id, name, description, price, category, is_available, image_url) VALUES
(5, 2, 'Butter Chicken Masala', 'Tender tandoori chicken cooked in rich tomato, butter & cashew gravy.', 16.50, 'Main Course', TRUE, 'https://images.unsplash.com/photo-1588166524941-3bf61a9c41db?w=500'),
(6, 2, 'Hyderabadi Dum Biryani', 'Fragrant basmati rice layered with spiced marinated lamb & saffron.', 17.99, 'Biryani', TRUE, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500'),
(7, 2, 'Garlic Butter Naan', 'Soft oven-baked Indian flatbread brushed with fresh garlic & melted butter.', 3.99, 'Breads', TRUE, 'https://images.unsplash.com/photo-1626074353765-517a681e40be?w=500'),
(8, 2, 'Mango Lassi', 'Refreshing chilled yogurt drink blended with sweet Alphonso mango pulp.', 4.50, 'Beverages', TRUE, 'https://images.unsplash.com/photo-1546173159-315724a31696?w=500')
ON DUPLICATE KEY UPDATE name=name;

-- Seed Menu Items for Sakura Sushi & Ramen (id: 3)
INSERT INTO menu_items (id, restaurant_id, name, description, price, category, is_available, image_url) VALUES
(9, 3, 'Tonkotsu Ramen', 'Rich pork bone broth, tender chashu pork belly, ajitama egg, and nori.', 16.99, 'Ramen', TRUE, 'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=500'),
(10, 3, 'Dragon Roll', 'Eel, cucumber roll topped with sliced avocado, unagi sauce, and sesame.', 15.50, 'Sushi Rolls', TRUE, 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?w=500'),
(11, 3, 'Salmon Sashimi (5 pcs)', 'Fresh prime Atlantic salmon slices served with pickled ginger & wasabi.', 14.00, 'Sashimi', TRUE, 'https://images.unsplash.com/photo-1534422298391-e4f8c172dddb?w=500')
ON DUPLICATE KEY UPDATE name=name;

-- Seed Menu Items for The Craft Burger Co. (id: 4)
INSERT INTO menu_items (id, restaurant_id, name, description, price, category, is_available, image_url) VALUES
(12, 4, 'Double Truffle Smash Burger', 'Double wagyu beef patties, swiss cheese, caramelized onions & truffle aioli.', 15.99, 'Burgers', TRUE, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500'),
(13, 4, 'Crispy Bacon Fries', 'Golden French fries topped with melted cheddar, crispy bacon bites & scallions.', 6.99, 'Sides', TRUE, 'https://images.unsplash.com/photo-1576107232684-1279f3908594?w=500')
ON DUPLICATE KEY UPDATE name=name;
