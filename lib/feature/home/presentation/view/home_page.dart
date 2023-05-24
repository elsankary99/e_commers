import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:shop/core/manager/color_manager.dart';
import 'package:shop/feature/home/presentation/widget/home_page_bodu.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.primaryColor,
        bottom: const PreferredSize(
            preferredSize: Size(double.infinity, 45),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("All Items",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            )),
      ),
      body: HomePageBody(),
    );
  }
}
