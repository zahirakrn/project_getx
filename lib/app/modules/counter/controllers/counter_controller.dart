// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('Warning!', 'Udh ah cape',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.amber);
    } else {
      bilangan.value++;
    }
  }

  void minusSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar('Warning!', 'stopppp pls!',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Color.fromARGB(255, 251, 5, 5));
    } else {
      bilangan.value--;
    }
  }

  void refresh() {
    Get.snackbar('Warning!', 'jadian lagi yaaaaaa',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Color.fromARGB(255, 209, 7, 236));
    bilangan.value = 0;
  }
}
