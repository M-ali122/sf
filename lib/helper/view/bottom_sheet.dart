import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class OrderDetailBottomSheet extends StatelessWidget {
    OrderDetailBottomSheet({super.key});

  var theme = Get.theme;

  //  RangeValues _currentRangeValues = const RangeValues(0, 1000); 

 // Initial range values
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(16),
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text(
              'Filter',
              style: theme.textTheme.displayLarge,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 15,),
           Text('Date',
          style: theme.textTheme.labelLarge ,
          ),
        const SizedBox(height: 15,),
          Row(
            children: [
              Container(
                width: 61,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColor.primaryColor500
                ),
                child:  Center(
                  child: Text('All',
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                     color: AppColor.white
                     )
                  ),
                ),
              ),
              const SizedBox(width: 15,),
              Container(
                width: 87,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColor.backGroundSilver
                ),
                child: Center(
                  child: Text(
                    'Today',
                    style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                     color: AppColor.black
                     )
                    ),
                ),
              ),
              const SizedBox(width: 20,),
              Container(
                width: 120,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColor.backGroundSilver
                ),
                child: Center(
                  child: Text('This Week',
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                     color: AppColor.black
                     )
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
           Text('Order Status',
          style: theme.textTheme.button ,
          ),
        const SizedBox(height: 20,),
          Row(
            children: [
              Container(
                width: 61,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColor.primaryColor500
                ),
                child:  Center(
                  child: Text('All',
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                     color: AppColor.white
                     )
                  ),  
                ),
              ),
              const SizedBox(width: 15,),
              Container(
                width: 87,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColor.backGroundSilver
                ),
                child: Center(
                  child: Text(
                    'Pending',
                    style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                     color: AppColor.black
                     )
                    ),
                ),
              ),
              const SizedBox(width: 15,),
              Container(
                width: 120,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColor.backGroundSilver
                ),
                child: Center(
                  child: Text('Processing',
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                     color: AppColor.black
                     )
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
            Text('Order Price Range',
          style: theme.textTheme.button ,
          ),
          const SizedBox(height: 30,),
    //      RangeSlider(
    //   values: _currentRangeValues,
    //   min: 0,
    //   max: 1000,
    //   divisions: 10,       
    //   inactiveColor: AppColor.backGroundSilver,
    //   labels: RangeLabels(
    //     _currentRangeValues.start.round().toString(),
    //     _currentRangeValues.end.round().toString(),
    //   ),
    //   onChanged: (RangeValues values) {
    //     setState(() {
    //       _currentRangeValues = values;
    //     });
    //   },
    // )
         SvgPicture.string(Svgs.priceSlider),
         
          const SizedBox(height: 20,),
          const Divider(),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppButton(
                width: 184,
                title: 'Reset',
                foreground: AppColor.black,
                 onTap: (){
                  Navigator.of(context).pop();
                 },
                 gradient: AppColor.buttonGredient,
              ),
              AppButton(
                width: 184,
                title: 'Apply',
                 onTap: (){
                   Navigator.of(context).pop();
                 },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
