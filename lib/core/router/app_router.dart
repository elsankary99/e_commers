import 'package:auto_route/auto_route.dart';
import 'package:shop/feature/home/presentation/view/home_page.dart';
import 'package:shop/feature/splash/view/splash_page.dart';

part 'app_router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
      ];
}
