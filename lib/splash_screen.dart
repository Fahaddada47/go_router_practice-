import 'package:flutter/material.dart';
import 'package:go_practice/app_router.dart';
import 'package:go_practice/page_one.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String name = 'splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  AppRouter.push(context, PageOne.name);
                },
                icon: const Icon(
                  Icons.wb_incandescent,
                  size: 100,
                ),
              )
            ],
          ),
        ));
  }
}
