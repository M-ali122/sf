import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' as g;
import 'package:get/get_utils/get_utils.dart';
import 'package:sf_app/client_side_design/auth/controllers/login_controller.dart';



class AuthRequest {
  final Dio _request = Dio();

  AuthRequest();

  multipart(PlatformFile filePath) async {
    if (g.GetPlatform.isWeb) {
      // Convert the image to bytes and create a MultipartFile
      final bytes = File.fromRawPath(filePath.bytes!).readAsBytesSync();

      final photoFile = MultipartFile.fromBytes(bytes,
          filename: '${DateTime.now().microsecondsSinceEpoch}.jpg');

      FormData formData = FormData.fromMap({
        'photo': photoFile,
      });
      print("SETUP");
      return formData;
    } else {
      FormData formData = FormData.fromMap({
        "photo": await MultipartFile.fromFile(filePath.path!),
      });
      return formData;
    }
  }

  multipartList(List<PlatformFile> list, {serviceId}) async {
    List<dynamic> files = [];

    for (PlatformFile file in list) {
      files.add(base64Encode(GetPlatform.isWeb
          ? file.bytes!
          : File(file.path!).readAsBytesSync()));

      // formData.files.add(
      //   MapEntry(
      //     'image',
      //     MultipartFile.fromBytes(
      //       GetPlatform.isWeb
      //           ? file.bytes!
      //           : File(file.path!).readAsBytesSync(),
      //       filename: '${DateTime.now().microsecondsSinceEpoch}.png',
      //     ),
      //   ),
      // );
    }

    //formData['multi'] = true;
    //formData['attachment_type'] = type;
    return jsonEncode(files);

    //formData['coach_service_id'] = serviceId;

    // FormData formData = FormData.fromMap(
    //     {"file": files, 'attachment_type': type, 'multi': true});
    //return formData;
  }

  Future<String> decodeVideo(PlatformFile file) async {
    if (GetPlatform.isWeb) {
      return base64Encode(file.bytes!);
    }

    return base64Encode(File(file.path!).readAsBytesSync());
  }

  Future<List<MultipartFile>> multipartVideos(List<PlatformFile> list,
      {serviceId}) async {
    List<MultipartFile> files = [];

    for (PlatformFile file in list) {
      if (GetPlatform.isWeb) {
        files.add(MultipartFile.fromBytes(
          file.bytes!,
          filename: file.name,
        ));
      } else {
        files.add(await MultipartFile.fromFile(file.path!, filename: file.name));
      }

      // formData.files.add(
      //   MapEntry(
      //     'image',
      //     MultipartFile.fromBytes(
      //       GetPlatform.isWeb
      //           ? file.bytes!
      //           : File(file.path!).readAsBytesSync(),
      //       filename: '${DateTime.now().microsecondsSinceEpoch}.png',
      //     ),
      //   ),
      // );
    }
    return files;
    //formData['multi'] = true;
    //formData['attachment_type'] = type;

    //formData['coach_service_id'] = serviceId;

    // FormData formData = FormData.fromMap(
    //     {"file": files, 'attachment_type': type, 'multi': true});
    //return formData;
  }

  multipartListShared(List<PlatformFile> list, String type, sharedWith) async {
    List<dynamic> files = [];
    var formData = {};
    for (PlatformFile file in list) {
      files.add({
        "attachment": base64Encode(File(file.path!).readAsBytesSync()),
        'extension': ".${file.extension}",
        'name': file.name
      });
    }

    formData['multi'] = true;
    formData['attachment_type'] = type;
    formData['attachments'] = jsonEncode(files);
    formData['shared_with'] = sharedWith;

    // FormData formData = FormData.fromMap(
    //     {"file": files, 'attachment_type': type, 'multi': true});
    return formData;
  }

  Future<Response?> get({required String api, data}) async {
    bool internet = await isInternetAvailable();
    if (internet) {
      _setRequestOptions();
      try {
        var req = await _request.get(api, queryParameters: data);
        return req;
      } on DioException catch (e) {
        //when any other response comes than 200
        //Fluttertoast.showToast(msg: "Nothing found!");
        print(e.response);
      }
    }
    return null;
  }

  Future<Response?> post({required String api, data}) async {
    bool internet = await isInternetAvailable();

    if (internet) {
      _setRequestOptions();
      try {
        var req = await _request.post(api, data: data);
        return req;
      } on DioException catch (e) {
        //when any other response comes than 200
        print(e.response);
        //Fluttertoast.showToast(msg: e.response.toString());
        return null;
      }
    }
    return null;
  }

  delete({required String api, id}) async {
    bool internet = await isInternetAvailable();

    if (internet) {
      _setRequestOptions();
      try {
        var req = await _request.delete("$api/$id");
        return req.data;
      } on DioException catch (e) {
        //Fluttertoast.showToast(msg: e.response.toString());

        return e.response.toString();
      }
    }
  }

  Future<Response<dynamic>?> postMultipart(
      {required String api,
      required formData,
      required progressReceived}) async {
    bool internet = await isInternetAvailable();

    if (internet) {
      _setRequestOptions();
      try {
        var req = await _request.post(
          api,
          data: formData,
          onSendProgress: progressReceived,
        );
        return req;
      } on DioException catch (e) {
        print("POST ${e.error} ${e.message} ${e.response}");
        //when any other response comes than 200
        //DryContoller().showError(e.message.toString());
        return null;
      }
    }
    return null;
  }

  put({required String api, data}) async {
    bool internet = await isInternetAvailable();
    if (internet) {
      _setRequestOptions();
      try {
        var req = await _request.put(api, data: data);
        return req.data;
      } on DioException catch (e) {
        //when any other response comes than 200
        //   DryContoller().showError(e.message.toString());
        return null;
      }
    }
  }

  _setRequestOptions({bool multipart = false}) {
    UserController authController = g.Get.put(UserController());
    authController.loadUser();
    if (kDebugMode) {
      print(authController.user.value.token);
      print(authController.user.value.id);
    }
    if (authController.user.value.token != null) {
      _request.options = BaseOptions(
        receiveDataWhenStatusError: true,
        contentType: Headers.formUrlEncodedContentType,
        headers: multipart
            ? {
                "Content-Type": "multipart/form-data",
                'Authorization': "Bearer ${authController.user.value.token}",
                'Access-Control-Allow-Origin': '*'
              }
            : {
                'Authorization': "Bearer ${authController.user.value.token}",
                'Access-Control-Allow-Origin': '*'
              },
      );
    }
  }

  Future<bool> isInternetAvailable() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      // I am connected to a mobile network.
      return Future.value(true);
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a wifi network.
      return Future.value(true);
    } else {
      //   DryContoller().showError("You are in offline mode!");
      return Future.value(true);
    }
  }
}