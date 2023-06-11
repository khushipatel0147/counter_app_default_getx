import 'package:get/get.dart';

class MathController extends GetxController {
  int i = 0;

  void plus() {
    i++;
    update();
  }

  void minus() {
    i--;
    update();
  }

  void xx() {
   i= i * i;
    update();
  }

  void xxx() {
   i= i *3;
    update();
  }

  void xxxx() {
  i=  i * 4;
    update();
  }

  void clear() {
   i=0;
    update();
  }
}
