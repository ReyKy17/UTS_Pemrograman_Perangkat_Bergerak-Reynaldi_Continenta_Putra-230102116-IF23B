class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;
  final double rating;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    required this.rating,
  });

  // Data dummy produk
  static List<Product> getDummyProducts() {
    return [
      Product(
        id: '1',
        name: 'Logitech M720 Mouse Wireless Bluetooth Multi-Device Hyper Fast-Scroll untuk Windows, Mac, Chrome OS, Android & iOS',
        description: 'Mouse wireless via bluetooth yang mampu terhubung dengan multi-perangkat.',
        price: 1039000,
        imageUrl: 'assets/produk/mouse/1_Logitech_M720_Mouse.png',
        category: 'Mouse',
        rating: 4.7,
      ),
      Product(
        id: '2',
        name: 'Logitech MX Anywhere 2S Mouse Wireless, BLUETOOTH EDITION, Rechargeable, Portable, Multi-devices for Power User Windows, Mac, Chrome OS, Android & iOS',
        description: 'Mouse wireless via bluetooth yang mampu terhubung dengan tiga perangkat.',
        price: 1299000,
        imageUrl: 'assets/produk/mouse/2_Logitech_MX_Anywhere_2S_Mouse.png',
        category: 'Mouse',
        rating: 4.6,
      ),
      Product(
        id: '3',
        name: 'Logitech Wave Keys Keyboard Ergonomis Wireless, Bluetooth dan Multi-OS Windows/Mac dilengkapi dengan Cushioned Palm Rest',
        description: 'Keyboard wireless yang ergonomis sehingga nyaman untuk berbagai aktivitas.',
        price: 1279000,
        imageUrl: 'assets/produk/keyboard/1_Logitech_Wave_Keys_Keyboard.png',
        category: 'Keyboard',
        rating: 4.9,
      ),
      Product(
        id: '4',
        name: 'Logitech MX Mechanical Tactile Keyboard Wireless Bluetooth Backlit',
        description: 'Keyboard wireless yang nyaman untuk meningkatkan pengalaman bermain game atau aktivitas kerja.',
        price: 3189000,
        imageUrl: 'assets/produk/keyboard/2_Logitech_MX_Mechanical_Tactile_Keyboard.png',
        category: 'Keyboard',
        rating: 4.7,
      ),
      Product(
        id: '5',
        name: 'Logitech H390 Headset Stereo USB dengan Mikrofon Noise-Cancelling',
        description: 'Headset nyaman dengan mikrofon noise-cancelling dan in-line control.',
        price: 589000,
        imageUrl: 'assets/produk/headset/1_Logitech_H390_Headset.png',
        category: 'Headset',
        rating: 4.4,
      ),
      Product(
        id: '6',
        name: 'Logitech H540 Headset Stereo USB dengan Mikrofon Noise-Cancelling',
        description: 'Headset nyaman dengan kinerja audio tinggi dan mikrofon noise-cancelling.',
        price: 739000,
        imageUrl: 'assets/produk/headset/2_Logitech_H540_Headset.png',
        category: 'Headset',
        rating: 4.6,
      ),
      Product(
        id: '7',
        name: 'Logitech Brio 500 Webcam Full HD 1080p dengan Auto Light Correction, Show Mode, Auto Framing dan Mikrofon Dual Noise-canceling',
        description: 'Webcam dengan kualitas Full HD, penyesuaian cahaya, dan mikrofon noise-reducing.',
        price: 2489000,
        imageUrl: 'assets/produk/webcam/1_Logitech_Brio_500_Webcam.png',
        category: 'Webcam',
        rating: 4.6,
      ),
      Product(
        id: '8',
        name: 'Logitech MX Brio Webcam Streaming & Kolaborasi dilengkapi dengan Ultra HD 4K, 1080p pada 60 FPS, Mikrofon Noise Reduction Ganda dan Show Mode',
        description: 'Webcam dengan kualitas ultra HD 4K, penyesuaian cahaya, dan mikrofon noise-reducing.',
        price: 3289000,
        imageUrl: 'assets/produk/webcam/2_Logitech_MX_Brio_Webcam.png',
        category: 'Webcam',
        rating: 4.6,
      ),
    ];
  }
}