import 'package:dietosurelabs/views/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dietosurelabs/app_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
          debugShowCheckedModeBanner: false,
          title: "My App",
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          getPages: appRoute.getPages,
          home: LoginScreen(),
        );
      },
    );
  }
}
