import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 1.5,
                spreadRadius: 0.5,
                blurStyle: BlurStyle.outer)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: "userName",
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
