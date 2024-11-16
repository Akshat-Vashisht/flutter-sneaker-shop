import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final Function(int)? onTabChange;

  const BottomNavBar({super.key, required this.onTabChange});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        gap: 10,
        color: Colors.grey[600],
        activeColor: Colors.grey[850],
        tabBackgroundColor: Colors.grey.shade200,
        tabBorderRadius: 12,
        tabs: const [
          GButton(
            icon: Icons.shopify,
            text: 'S H O P',
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'C A R T',
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
