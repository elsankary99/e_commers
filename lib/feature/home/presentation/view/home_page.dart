import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop/core/manager/color_manager.dart';
import 'package:shop/core/theme/theme_service.dart';
import 'package:shop/feature/cart/cart_page.dart';
import 'package:shop/feature/home/data/repo/product_repo_impl.dart';
import 'package:shop/feature/home/presentation/view_model/product_cubit/product_cubit.dart';
import 'package:shop/feature/home/presentation/widget/home_page_body.dart';
import 'package:shop/feature/search/search_page.dart';
import 'package:shop/feature/wishlist/wishlist_page.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 4,
      vsync: this,
    );
    controller.addListener(() {
      setState(() {});
    });
  }

  List<IconData> iconList = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.solidHeart,
    FontAwesomeIcons.cartShopping,
    FontAwesomeIcons.magnifyingGlass,
  ];
  List<Widget> pages = [
    const HomePageBody(),
    const WishlistPage(),
    const CartPage(),
    const SearchPage()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductCubit(ProductRepoImplement())..getAllProduct(),
      child: Scaffold(
        backgroundColor: ColorManager.backGroundColor,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  ThemeService().changeTheme();
                },
                icon: Icon(CupertinoIcons.moon_stars))
          ],
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
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: pages,
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.sharpEdge,
          activeColor: ColorManager.primaryColor,
          activeIndex: controller.index,
          onTap: controller.animateTo,

          //other params
        ),
      ),
    );
  }
}
