import 'package:get/get.dart';

class ProfileImageUploadController extends GetxController {
  var selectedImagePath = ''.obs;
  var isUploading = false.obs;

  // Method to upload profile image
  void uploadProfileImage(String imagePath) async {
    try {
      // Set isUploading flag to true to indicate that upload is in progress
      isUploading.value = true;

      // Simulate upload process (replace this with actual upload logic)
      await Future.delayed(Duration(seconds: 2));

      // Update selectedImagePath with the uploaded image path (for demonstration)
      selectedImagePath.value = imagePath;

      // Reset isUploading flag after upload is complete
      isUploading.value = false;
    } catch (e) {
      // Handle upload error
      print('Error uploading image: $e');
      isUploading.value = false;
    }
  }
}
