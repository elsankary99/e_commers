import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/core/router/app_router.dart';
import 'package:shop/feature/home/data/delay_cubit/delay_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DelayCubit()..delay(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router.config(),
        theme: ThemeData(
          textTheme: GoogleFonts.arsenalTextTheme(),
        ),
      ),
    );
  }
}
