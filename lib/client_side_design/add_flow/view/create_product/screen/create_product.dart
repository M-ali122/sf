import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/designer_custome_progress_bar.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_product/controller/create_product_controller.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({super.key});

  @override
  State<CreateProduct> createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {

 final CreateProductController controller = CreateProductController();

  @override
  void initState() {
    super.initState();
    Get.put(controller);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if(controller.currentSelectIndexView.value > 0){
          int index = controller.currentSelectIndexView.value;
          index --;

          controller.onChangeView(index);
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Get.back();
            }, 
            icon: Icon(Icons.arrow_back)
          ),
          title: AnimatedContainer(
            duration: const Duration(milliseconds: 900),
            curve: Curves.easeIn,
            child: const DesignerSideCustomeProgressBar(),
          ),
          centerTitle: true,
        ),
        body: AnimatedContainer(
          duration: Duration(milliseconds: 900),
          curve: Curves.easeIn,
          padding: EdgeInsets.only(top: 16.h),
          child: Obx(() => controller.views[controller.currentSelectIndexView.value]),
        ),
      ),
    );
  }
}