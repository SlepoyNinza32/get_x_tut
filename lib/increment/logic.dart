import 'package:get/get.dart';

import 'state.dart';

class IncrementLogic extends GetxController {
  RxInt number = 0.obs;

  final IncrementState state = IncrementState();
}
