import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/Theme/theme.dart';
//import 'features/authentication/screens/Password_Configiration/Forget_Password.dart';
import 'features/shop/screens/Navigation_Menu.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      //home: const OnBordingScreen(),
      home: NavigationMenu(),
    );
  }
}
