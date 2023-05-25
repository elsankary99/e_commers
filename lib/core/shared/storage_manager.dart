import 'package:shared_preferences/shared_preferences.dart';

class StorageManager {
  static void saveData(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();

    if (value is int) {
      prefs.setInt(key, value);
    }
    if (value is double) {
      prefs.setDouble(key, value);
    }
    if (value is String) {
      prefs.setString(key, value);
    }
    if (value is bool) {
      prefs.setBool(key, value);
    }

    return print("There was an error");
  }

  static Future<bool> deleteData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }

  static Future<dynamic> readData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    dynamic data = prefs.get(key);
    return data;
  }
}




// import 'package:shared_preferences/shared_preferences.dart';

// class StorageManager {
//   static void saveData(String key, dynamic value) async {
//     final prefs = await SharedPreferences.getInstance();
//     if (value is int) {
//       prefs.setInt(key, value);
//     } else if (value is String) {
//       prefs.setString(key, value);
//     } else if (value is bool) {
//       prefs.setBool(key, value);
//     } else {
//       print("Invalid Type");
//     }
//   }

//   static Future<dynamic> readData(String key) async {
//     final prefs = await SharedPreferences.getInstance();
//     dynamic obj = prefs.get(key);
//     return obj;
//   }

//   static Future<bool> deleteData(String key) async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.remove(key);
//   }
// }
