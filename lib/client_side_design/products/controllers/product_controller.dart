import 'package:get/get.dart';

class ProductController extends GetxController{

  RxInt productOtption = 0.obs;

  void chnageIndexValue (Value){
   productOtption.value = Value;
   print('change ');
   update();
  }

}