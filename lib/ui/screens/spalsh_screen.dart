import 'package:flutter/material.dart';
import 'package:task_manager_ostad/ui/controllers/auth_controller.dart';
import 'package:task_manager_ostad/ui/screens/main_bottom_nav_screeen.dart';
import 'package:task_manager_ostad/ui/screens/sign_in_screen.dart';
import 'package:task_manager_ostad/ui/widgets/screen_background.dart';
import '../widgets/app_logo.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});
  static const String name = '/';

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    moveToNextScreen();
  }

  Future<void> moveToNextScreen() async{
    await Future.delayed(const Duration(seconds: 2));
    bool isUserLoggedIn = await AuthController.isUserLoggedIn();
    if(isUserLoggedIn) {
      Navigator.pushReplacementNamed(context, MainBottomNavScreeen.name);
    }else{
      Navigator.pushReplacementNamed(context, SignInScreen.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScreenBackground(
        child: Center(
          child: AppLogo(),
        ),
      ),
    );
  }
}
