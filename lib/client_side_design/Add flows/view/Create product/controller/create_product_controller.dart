import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20product/view/create_product_form.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20product/view/create_product_two.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20product/view/screen_four.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20product/view/screen_three.dart';

class CreateProductController extends GetxController{

final RxBool busy = false.obs;

final RxList<Widget> views = [
  const CreaeteProductScreenform(),
 const ProductScreenTwo(),
 ScreenThree(),
 const UploadProductImage(),
].obs; 

final RxInt currentSelectIndexView = 0.obs;
  onChangeView(int index) {
    currentSelectIndexView.value = index;

    update();
  }  


uploadProductImage () async {
  onChangeView(4);
}
screenThree() async {
  onChangeView(3);
}

// ignore: non_constant_identifier_names
productScreenTwo() async {
onChangeView(2);
}

createProduct() async {
    //TODO : logics of saving user input

    //Navigate to Email verification
    onChangeView(1);
  }


}