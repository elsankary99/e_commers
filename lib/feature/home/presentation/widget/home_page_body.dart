import 'package:flutter/material.dart';
import 'package:shop/feature/home/presentation/widget/item_card.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8 / 1,
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8),
      itemBuilder: (context, index) {
        return const ItemCard();
      },
    );
  }
}
