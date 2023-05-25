import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop/core/manager/color_manager.dart';
import 'package:shop/feature/cart/cart_page.dart';
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
    return Scaffold(
      backgroundColor: ColorManager.backGroundColor,
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
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: pages,
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
    );
  }
}
