import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/core/manager/color_manager.dart';
import 'package:shop/core/manager/image_assets_manager.dart';
import 'package:shop/feature/login/data/classes/language_constant.dart';
import 'package:shop/feature/login/view/widget/sign_in_page_body.dart';
import 'package:shop/feature/login/view/widget/dropdwon_button.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: CustomSwitchButton(),
        shadowColor: ColorManager.primaryColor,
        toolbarHeight: 200,
        flexibleSpace: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgPicture.asset(ImageAssetsManager.logo, height: 50),
            const SizedBox(
              height: 15,
            ),
            Text(
              translation(context).signIn,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            CustomDropdownButton()
          ]),
        ),
      ),
      body: const SignInPageBody(),
    );
  }
}
