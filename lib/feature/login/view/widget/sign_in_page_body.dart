import 'package:flutter/material.dart';
import 'package:shop/core/manager/color_manager.dart';
import 'package:shop/feature/login/view/widget/custom_text_form_field.dart';

class SignInPageBody extends StatefulWidget {
  const SignInPageBody({
    super.key,
  });

  @override
  State<SignInPageBody> createState() => _SignInPageBodyState();
}

class _SignInPageBodyState extends State<SignInPageBody> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
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
            const CustomTextFormField(errorMessage: "userName"),
            const CustomTextFormField(errorMessage: "Password"),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("Success");
                    print("=================================");
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),

                  // maximumSize: Size(30, 2),
                ),
                child: const Text(
                  "SIGN IN",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
