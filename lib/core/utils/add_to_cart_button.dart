import 'package:flutter/material.dart';
import 'package:shop/core/manager/color_manager.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          decoration: const BoxDecoration(
              color: ColorManager.primaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16))),
          child: const Text(
            "Add to Cart",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
