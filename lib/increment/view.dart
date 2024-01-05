import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class IncrementPage extends StatelessWidget {
  IncrementPage({Key? key}) : super(key: key);

  final logic = Get.put(IncrementLogic());
  final state = Get.find<IncrementLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IncrementLogic>(
      builder: (logic) {

        return InkWell(
          onTap: () {
            logic.state.plus();
          },
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.95,
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: Text('Hello${logic.state.number}'),
          ),
        );
      },
    );
  }
}
