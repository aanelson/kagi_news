import 'package:flutter/material.dart';
import 'package:kagi_news/dependency_setup.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_cubit.dart';
import 'package:kagi_news/home_screen/widgets/home_screen_list.dart';

void main() {
  runApp(setupDependencyInjection(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: HomeScreenCubit.select(
            context,
            (state) => state.colorSeed,
          ),
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      home: const HomeScreenPage(),
    );
  }
}
