import 'package:flutter/material.dart';
import 'package:task_manager_ostad/ui/screens/forgot_password_verify_email_screen.dart';
import 'package:task_manager_ostad/ui/screens/sign_in_screen.dart';
import 'package:task_manager_ostad/ui/screens/sign_up_screen.dart';
import 'package:task_manager_ostad/ui/screens/spalsh_screen.dart';

import 'ui/utils/app_colors.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          fillColor: Colors.white,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themeColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            fixedSize: const Size.fromWidth(double.maxFinite),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
      ),
      onGenerateRoute: (RouteSettings settings) {
        late Widget widget;
        if (settings.name == SpalshScreen.name) {
          widget = const SpalshScreen();
        } else if (settings.name == SignInScreen.name) {
          widget = const SignInScreen();
        }else if (settings.name == SignUpScreen.name) {
          widget = const SignUpScreen();
        }else if (settings.name == ForgotPasswordVerifyEmailScreen.name) {
          widget = const ForgotPasswordVerifyEmailScreen();
        }
        return MaterialPageRoute(builder: (_) => widget);
      },
    );
  }
}