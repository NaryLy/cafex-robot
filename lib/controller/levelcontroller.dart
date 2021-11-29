import 'package:get/get.dart';

class LevelController extends GetxController {
  String sugar = 'unknown';
  String ice = 'unknown';
  String cup = 'unknown';

  void changeSugarLevel(String newSugarLevel) {
    sugar = newSugarLevel;
    update();
  }

  void changeIceLevel(String newIceLevel) {
    ice = newIceLevel;
    update();
  }

  void changeCupLevel(String newCupLevel) {
    cup = newCupLevel;
    update();
  }
}
