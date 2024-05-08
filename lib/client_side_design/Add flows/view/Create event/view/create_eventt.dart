import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20event/controller/event_controller.dart';
import 'package:sf_app/helper/view/designer_custome_progress_bar.dart';

class CreateEventt extends StatefulWidget {
  const CreateEventt({super.key});

  @override
  State<CreateEventt> createState() => _CreateEventtState();
}

class _CreateEventtState extends State<CreateEventt> {

  final CreateEventController controller = CreateEventController();
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
          padding: EdgeInsets.only(top: 16),
          child: Obx(() => controller.views[controller.currentSelectIndexView.value]),
        ),
      ),
    );
  }
}