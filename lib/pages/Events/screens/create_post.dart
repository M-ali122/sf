import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sf_app/helper/extensions/spacings.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Create Post'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: SizedBox(
              height: Get.height * .2,
              width: Get.width * .80,
              child: Row(
                children: [
                  SizedBox(
                    height: Get.height * .2,
                    width: Get.width * .5,
                    child: const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore  magna aliqua.viral fashion shoes et dolore  magna aliqua.viral fashion shoes',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Container(
                    height: Get.height * .2,
                    width: Get.width * .3,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: const Image(image: AssetImage('assets/cpimage.png')),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: SizedBox(
              height: Get.height * .1,
              width: Get.width * .80,
              child: Row(
                children: [
                  SizedBox(
                    height: Get.height * .1,
                    width: Get.width * .25,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.tag,
                          size: 15,
                        ),
                        Text('Hashtag')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .1,
                    width: Get.width * .25,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.pin_drop,
                          size: 15,
                        ),
                        Text('Mention')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .1,
                    width: Get.width * .25,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.video_camera_back,
                          size: 15,
                        ),
                        Text('Videos')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Get.height * .25,
            width: Get.width * .80,
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.verified_user),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
