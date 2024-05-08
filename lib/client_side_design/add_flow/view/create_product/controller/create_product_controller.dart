import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_product/view/create_product_form.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_product/view/product_color_choise.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_product/view/upload_product_picture.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_product/view/product_category.dart';

class CreateProductController extends GetxController{

final RxBool busy = false.obs;

final RxList<Widget> views = [
  const CreaeteProductScreenform(),
 const ProductColorChiose(),
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