import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20event/controller/event_controller.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/custome_textfield.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20event/view/create_event_two.dart';

class CreateEventForm extends StatefulWidget {
  const CreateEventForm({super.key});

  @override
  State<CreateEventForm> createState() => _CreateEventFormState();
}

class _CreateEventFormState extends State<CreateEventForm> {
  final CreateEventController controller = CreateEventController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.put(controller);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  const EdgeInsets.all(10.0),
          child: Column(
            children: [
               SizedBox(
                  height: 30.h,
                ),
                const Text(
                'Fill the information below',
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(33, 33, 33, 1)),
              ),
              SizedBox(height: 30.h,),
              const CustomTextField(
                heading: 'Event Name',
                title: 'Write Here',
              ),
              SizedBox(height: 25.h,),
              const CustomTextField(
                heading: 'Event Date',
                title: 'Write Here',
              ),
              SizedBox(height: 25.h,),
              const CustomTextField(
                heading: 'Event Hour',
                title: 'Write Here',
              ),
              SizedBox(height: 25.h,),
              const CustomTextField(
                heading: 'Event Description',
                title: 'Write Here',
              ),  
               Spacer(),
              // ignore: prefer_const_constructors
              AppButton(title: 'Post event', onTap: () async{controller.createEventForm();}),
              SizedBox(height: 10.h,)

            ],
          ),
        ),
      ),
    );
  }
}