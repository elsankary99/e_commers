import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/core/router/app_router.dart';
import 'package:shop/core/theme/theme_service.dart';
import 'package:shop/feature/login/data/classes/language_constant.dart';
import 'package:shop/feature/splash/view/splash_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  //!
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
  //!
}

class _MyAppState extends State<MyApp> {
  //!
  Locale? _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) => setLocale(locale));
    super.didChangeDependencies();
  }
  //!

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // theme: ThemeService().lightTheme,
      // darkTheme: ThemeService().darkTheme,
      // themeMode: ThemeService().getThemeMode(),
      //!

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      // locale: _locale, //!<---//
      locale: Locale("en"), //!<---//
      //!

      debugShowCheckedModeBanner: false,
      routerConfig: router.config(),
      theme: ThemeData(
          // textTheme: GoogleFonts.arsenalTextTheme(),
          ),
    );
  }
}






    //  localeResolutionCallback: (currentLang, supportedLang) {
    //     if (currentLang != null) {
    //       for (Locale locale in supportedLang) {
    //         if (locale.languageCode == currentLang.languageCode) {
    //           return currentLang;
    //         }
    //       }
    //     }
    //     return supportedLang.first;
    //   },