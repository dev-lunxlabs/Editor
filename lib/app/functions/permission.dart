import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> getCameraPermission() async {
  final camera = await Permission.camera.status;

  if (!camera.isGranted) {
    await Permission.camera.request();
  } else {
    debugPrint("camera permission already granted");
  }
}

Future<void> getStoragePermission() async {
  final storage = await Permission.storage.status;
  final manageStorage = await Permission.manageExternalStorage.status;

  if (manageStorage.isDenied && storage.isDenied) {
    await Permission.storage.request();
    await Permission.manageExternalStorage.request();
  } else {
    debugPrint("storage permission already granted");
  }
}

Future<void> getLocationPermission() async {
  final location = await Permission.location.status;
  final locationWhenInUse = await Permission.locationWhenInUse.status;

  if (!location.isGranted && !locationWhenInUse.isGranted) {
    await Permission.locationWhenInUse.request();
    await Permission.location.request();
  } else {
    debugPrint("location permission already granted");
  }
}
