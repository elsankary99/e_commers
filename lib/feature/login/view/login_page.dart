import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/core/manager/color_manager.dart';
import 'package:shop/core/manager/image_assets_manager.dart';
import 'package:shop/feature/login/view/widget/custom_text_form_field.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: ColorManager.primaryColor,
        toolbarHeight: 200,
        flexibleSpace: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgPicture.asset(ImageAssetsManager.logo, height: 50),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "SIGN IN",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 50,
            ),
            const Text("Clothes Shop",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.primaryColor)),
            const SizedBox(
              height: 10,
            ),
            const Text("please sign in to continue",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            const SizedBox(
              height: 40,
            ),
            const CustomTextFormField(),
            const CustomTextFormField(),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "SIGN IN",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),

                  // maximumSize: Size(30, 2),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text("Don't have an account ?",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            const SizedBox(
              height: 4,
            ),
            TextButton(
                onPressed: () {},
                child: const Text("SIGN UP",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)))
          ]),
        ),
      ),
    );
  }
}
