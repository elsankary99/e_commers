import 'package:flutter/material.dart';
import 'package:shop/app.dart';
import 'package:shop/feature/login/data/classes/lang_dropdown.dart';
import 'package:shop/feature/login/data/classes/language_constant.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Language>(
      underline: const SizedBox(),
      icon: const Icon(
        Icons.language,
        color: Colors.white,
      ),
      items: Language.languageList()
          .map<DropdownMenuItem<Language>>((e) => DropdownMenuItem<Language>(
                value: e,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        e.name,
                        style: const TextStyle(fontSize: 18),
                      ),
                      Text(
                        e.flag,
                        style: const TextStyle(fontSize: 25),
                      ),
                    ]),
              ))
          .toList(),
      onChanged: (Language? language) async {
        if (language != null) {
          //!---->
          Locale locale = await setLocale(language.languageCode);
          MyApp.setLocale(context, locale);
        }
      },
    );
  }
}
