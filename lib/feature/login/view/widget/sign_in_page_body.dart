import 'package:flutter/material.dart';
import 'package:shop/core/manager/color_manager.dart';
import 'package:shop/core/router/app_router.dart';
import 'package:shop/feature/login/data/classes/language_constant.dart';
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
            Text(translation(context).clothesShop,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.primaryColor)),
            const SizedBox(
              height: 10,
            ),
            Text(translation(context).pleaseSigin,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            const SizedBox(
              height: 40,
            ),
            CustomTextFormField(errorMessage: translation(context).username),
            CustomTextFormField(errorMessage: translation(context).password),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  router.replace(const HomeRoute());
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
                child: Text(
                  translation(context).signIn,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Text(translation(context).dontHaveAcount,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            const SizedBox(
              height: 4,
            ),
            TextButton(
                onPressed: () {},
                child: Text(translation(context).signUp,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)))
          ]),
        ),
      ),
    );
  }
}
