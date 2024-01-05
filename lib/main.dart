import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'increment/logic.dart';
import 'increment/view.dart';

void main() {
  runApp(GetMaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //int number = 0.obs as int;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IncrementPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<IncrementLogic>().state.plus();
        },
        child: Text('+'),
      ),
    );
  }
}
