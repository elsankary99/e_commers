import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/feature/home/data/models/products/products.dart';
import 'package:shop/feature/home/presentation/view/home_page.dart';
import 'package:shop/feature/login/view/login_page.dart';
import 'package:shop/feature/product_details/presentation/view/product_details_page.dart';
import 'package:shop/feature/splash/view/splash_page.dart';

part 'app_router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: ProductDetailsRoute.page),
      ];
}
