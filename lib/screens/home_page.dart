import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/category_card.dart';
import '../widgets/featured_product_card.dart';
import 'detail_page.dart';
import 'grid_page.dart';

// Layout 1: Layout dasar (Container, Center, Padding, Align)
// Layout 2: Layout multi-child (Row, Column, Expanded, Spacer)
// Layout 5: Layout responsif (MediaQuery)

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = Product.getDummyProducts();
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Layout 1: Container dengan decoration
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.white.withOpacity(0.3),
                  width: 2,
                ),
              ),
              child: Center(
                child: Image.asset(
                  'assets/logo/continent_store_icon.png',
                  width: 28,
                  height: 28,
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Text('Continent Store'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section dengan Layout 1 & 2
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(isSmallScreen ? 16 : 24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).colorScheme.secondary,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Layout 1: Align untuk positioning
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Selamat Datang di Continent Store',
                      style: TextStyle(
                        fontSize: isSmallScreen ? 24 : 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Benuanya para kebutuhan PC-mu!',
                    style: TextStyle(
                      fontSize: isSmallScreen ? 14 : 16,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),

            // Categories Section dengan Layout 2 (Row, Column)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Kategori',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GridPage(),
                            ),
                          );
                        },
                        child: const Row(
                          children: [
                            Text('Lihat Semua'),
                            Icon(Icons.arrow_forward, size: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Layout 2: Row dengan Expanded untuk responsif
                  Row(
                    children: [
                      Expanded(
                        child: CategoryCard(
                          imagePath: 'assets/kategori/mouse.png',
                          title: 'Mouse',
                          color: Colors.blue.shade100,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CategoryCard(
                          imagePath: 'assets/kategori/keyboard.png',
                          title: 'Keyboard',
                          color: Colors.orange.shade100,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CategoryCard(
                          imagePath: 'assets/kategori/headset.png',
                          title: 'Headset',
                          color: Colors.purple.shade100,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CategoryCard(
                          imagePath: 'assets/kategori/webcam.png',
                          title: 'Webcam',
                          color: Colors.green.shade100,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Featured Products
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Produk Unggulan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ...products.take(3).map((product) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: FeaturedProductCard(
                          product: product,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailPage(product: product),
                              ),
                            );
                          },
                        ),
                      )),
                ],
              ),
            ),

            // Navigation Buttons dengan Layout 2 (Column, Row, Spacer)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailPage(product: products.first),
                              ),
                            );
                          },
                          icon: const Icon(Icons.info_outline),
                          label: const Text('Detail Produk'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const GridPage(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.grid_view),
                          label: const Text('Grid Produk'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Footer dengan Layout 1 (Center, Padding)
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  '© 2025 Continent Store',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}