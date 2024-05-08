// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sf_app/client_side_design/Add%20flows/view/Create%20event/view/create_event.dart';
// import 'package:sf_app/client_side_design/Add%20flows/view/Create%20event/view/create_event_two.dart';

// class CreateEventController extends GetxController {

//   final RxBool busy = false.obs;
  
//   final RxList<Widget> views = [
//     const CreateEventForm(),
//     const CreateEventTWo(),
//   ].obs;
  
//   final RxInt currentSelectIndexView = 0.obs;
//   onChangeView(int index) {
//     currentSelectIndexView.value = index;

//     update();
//   }  
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20event/view/create_event.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20event/view/create_event_two.dart';

class CreateEventController extends GetxController{

final RxBool busy = false.obs;

final RxList<Widget> views = [
  const CreateEventForm(),
  const CreateEventTWo(), 
].obs; 

final RxInt currentSelectIndexView = 0.obs;
  onChangeView(int index) {
    currentSelectIndexView.value = index;

    update();
  }  


createEventForm () async {
  onChangeView(1);
}
createEventTwo() async {
  onChangeView(2);
}

// ignore: non_constant_identifier_names


}