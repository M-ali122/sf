import 'package:get/get.dart';

class ProfileController extends GetxController {
  
  // Future<void> loadProfileImage(File imageFile) async {
  //   try {
  //     var request = http.MultipartRequest(
  //       'POST',
  //       Uri.parse(Apis().uploadProfileImage),
  //     );
  //     request.files
  //         .add(await http.MultipartFile.fromPath('file', imageFile.path));

  //     var streamedResponse = await request.send();
  //     var response = await http.Response.fromStream(streamedResponse);

  //     if (response.statusCode == 200) {
  //       // Image uploaded successfully
  //       print('Image uploaded successfully');
  //     } else {
  //       // Handle error
  //       print('Error uploading image: ${response.reasonPhrase}');
  //     }
  //   } catch (e) {
  //     print('Error uploading image: $e');
  //   }
  // }
}
