import 'package:flutter/material.dart';
import 'package:my_profile_app/firebase/login_widget.dart';
import 'package:my_profile_app/firebase/register_widget.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? LoginWidget(onClickedSignUp: toggle,)
      : RegisterWidget(onClickedLogIn: toggle);

  void toggle() => setState(() =>
    isLogin = !isLogin);
}

