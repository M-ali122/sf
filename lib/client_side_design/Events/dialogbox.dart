import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

showImageDialog(
  String imagePath,
) {
  Get.dialog(
    Center(
      child: Container(
        // Adjust width and height as needed for your image aspect ratio
        width: Get.width * 0.8, // 80% of screen width
        height: Get.height * 0.6, // 60% of screen height
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), // Add rounded corners
          color: Colors
              .white, // Optional background color (transparent if omitted)
        ),
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(10.0), // Match container's corners
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover, // Adjust fit as needed (cover, contain, etc.)
          ),
        ),
      ),
    ),
    barrierDismissible: true, // Allow tapping outside to dismiss
    transitionDuration:
        const Duration(milliseconds: 300), // Adjust transition speed if desired
  );
}
