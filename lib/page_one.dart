import 'package:flutter/material.dart';
import 'package:go_practice/app_router.dart';
import 'package:go_practice/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});
  static const String name = 'pageOne';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body:  Center(
        child: Column(
          children: [
            Text('Welcome to Page One'),
            TextButton(onPressed: (){
              AppRouter.push(context, PageTwo.name);
            }, child: Text("go to 2nd page"))
          ],
        ),
      ),
    );
  }
}
