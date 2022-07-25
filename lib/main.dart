import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'app/core/theme/theme.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      initialRoute: Routes.EDITOR, //AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
