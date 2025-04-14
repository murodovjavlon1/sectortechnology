import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;
  //   final List<Widget> _pages = const [
  //   HomePage(),
  //   SalesPage(),
  //   ComparePage(),
  //   CartPage(),
  //   ProfilePage(),
  // ];

  final List<Widget> _pages = [
    Center(child: Text('Главный')),
    Center(child: Text('Акции')),
    Center(child: Text('Сравнить')),
    Center(child: Text('Корзина')),
    Center(child: Text('Кабинет')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Главный',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.percent),
            label: 'Акции',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: 'Сравнить',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Кабинет',
          ),
        ],
      ),
    );
  }
}
