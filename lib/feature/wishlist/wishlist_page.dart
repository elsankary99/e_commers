import 'package:flutter/material.dart';
import 'package:shop/feature/wishlist/widgets/wishlist_item.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: WishlistItem(),
          );
        },
      ),
    );
  }
}
