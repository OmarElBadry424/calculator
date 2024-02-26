import 'package:calcuator/local/shared_prefrences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Theme/Theme_cubit.dart';
import 'Theme/Theme_state.dart';
import 'Utilites/style/app_theme.dart';
import 'calculator_screen.dart';

void main() {
  MyCache.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            ThemeCubit.get(context).getTheme();

            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              home: const CalculatorScreen(),
              theme: ThemeCubit.get(context).isDark
                  ? Themes.darkTheme
                  : Themes.lightTheme,
            );
          },
        ));
  }
}
