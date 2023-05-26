// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:shop/core/manager/color_manager.dart';

// class ThemeService {
//   final ightTheme = ThemeData.light().copyWith(
//     primaryColor: ColorManager.primaryColor,
//     appBarTheme: const AppBarTheme(),
//   );

//   final darkTheme = ThemeData.light().copyWith(
//     primaryColor: Colors.black,
//     appBarTheme: const AppBarTheme(),
//   );
//   final _getStorage = GetStorage();
//   final _darkThemeKey = 'isDarkTheme';
//   void saveThemeData(bool isDarkMode) {
//     _getStorage.write(_darkThemeKey, isDarkMode);
//   }

//   bool isSaveDarkMode() {
//     return _getStorage.read(_darkThemeKey) ?? false;
//   }

//   ThemeMode getThemeMode() {
//     return isSaveDarkMode() ? ThemeMode.dark : ThemeMode.light;
//   }

//   void changeTheme() {
//     Get.changeThemeMode(isSaveDarkMode() ? ThemeMode.dark : ThemeMode.light);
//     saveThemeData(!isSaveDarkMode());
//   }
// }
