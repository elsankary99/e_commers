import 'package:flutter/material.dart';
import 'package:shop/core/manager/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.errorMessage,
    super.key,
  });
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your ";
          }
          return null;
        },
        decoration: InputDecoration(
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                    color: ColorManager.primaryColor,
                    style: BorderStyle.solid)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.red, width: 2, style: BorderStyle.solid)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    BorderSide(color: Colors.grey, style: BorderStyle.solid)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                    color: ColorManager.primaryColor,
                    style: BorderStyle.solid)),
            border: InputBorder.none,
            hintText: errorMessage,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
      ),
    );
  }
}
