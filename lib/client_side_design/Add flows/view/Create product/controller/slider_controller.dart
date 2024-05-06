import 'package:get/get.dart';

class SliderController extends GetxController {
  // Define a reactive variable to store the slider value
  var sliderValue = 500.0.obs; // Initialize with minimum value

  // Method to update the slider value
  void updateSliderValue(double value) {
    sliderValue.value = value;
  }
}
