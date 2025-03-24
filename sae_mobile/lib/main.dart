import 'package:flutter/material.dart';
import 'package:sae_mobile/screens/home.dart';
import 'package:sae_mobile/screens/search.dart';
import 'package:sae_mobile/screens/profile.dart';
import 'package:sae_mobile/screens/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "IUTABLE'O",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF000000)
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const ListScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF363737),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFFBBBBBB), 
      unselectedItemColor: Color(0xFFBBBBBB),
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
          BottomNavigationBarItem(            
            icon: Icon(Icons.home, color: Color(0xFFBBBBBB), ),
            label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Color(0xFFBBBBBB), ),
            label: "Recherche"),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, color: Color(0xFFBBBBBB)),
            label: "Ma liste"),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Color(0xFFBBBBBB)),
            label: "Mon Compte"),
        ],
    );
  }
}