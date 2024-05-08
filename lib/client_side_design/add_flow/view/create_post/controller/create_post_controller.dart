import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_post/view/create_post_two.dart';

class CreatePostController extends GetxController{

final RxBool busy = false.obs;

final RxList<Widget> views = [
const CreatePostTWo(),

].obs; 


}