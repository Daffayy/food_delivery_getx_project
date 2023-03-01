import 'package:get/get.dart';


enum RadioButtonProfile { cardProfile, bankAccountProfile, paypalProfile }

class ProfileChangeScreenController extends GetxController {
  //TODO: Implement ProfileChangeScreenController
 final Rx<RadioButtonProfile> character = RadioButtonProfile.cardProfile.obs;

 void onClickProfile(value){
    character.value = value;
  }
  
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
