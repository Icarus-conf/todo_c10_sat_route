import 'package:flutter/material.dart';
import 'package:todo_c10_sat_route/pages/auth/pages/login_page.dart';
import 'package:todo_c10_sat_route/pages/auth/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  static const String routeName = 'LoginOrRegisterPage';
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
