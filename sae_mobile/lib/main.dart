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
        scaffoldBackgroundColor: const Color(0xFF50508A)
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
      selectedItemColor: Colors.black, 
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
          BottomNavigationBarItem(            
            icon: Image.asset("icons/home.png",width: 24, height: 24),
            label: "Home"),
          BottomNavigationBarItem(
            icon: Image.asset("icons/search.png",width: 24, height: 24),
            label: "Recherche"),
          BottomNavigationBarItem(
            icon: Image.asset("icons/list.png",width: 24, height: 24),
            label: "Ma liste"),
          BottomNavigationBarItem(
            icon: Image.asset("icons/account_circle.png",width: 24, height: 24),
            label: "Mon Compte"),
        ],
    );
  }
}