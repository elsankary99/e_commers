import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/core/component/applocal.dart';
import 'package:shop/core/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: [
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale("en"),
      localeResolutionCallback: (currentLang, supportedLang) {
        if (currentLang != null) {
          for (Locale locale in supportedLang) {
            if (locale.languageCode == currentLang.languageCode) {
              return currentLang;
            }
          }
        }
        return supportedLang.first;
      },
      debugShowCheckedModeBanner: false,
      routerConfig: router.config(),
      theme: ThemeData(
        textTheme: GoogleFonts.arsenalTextTheme(),
      ),
    );
  }
}
