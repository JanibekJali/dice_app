import 'package:dice_app/data/repositories/math_repo.dart';
import 'package:get/get.dart';

class DiceController extends GetxController {
  RxInt leftNumber = 5.obs;
  RxInt rightNumber = 3.obs;
  RxInt count = 0.obs;

  void getRandomNumber() {
    leftNumber.value = MathRepo.getRandomNumber();
    rightNumber.value = MathRepo.getRandomNumber();
    count.value++;
  }
}
