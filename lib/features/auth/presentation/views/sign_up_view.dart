import 'package:flutter/material.dart';

import 'sign_up_view_body.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return
      const Scaffold(backgroundColor: Color(0xFFFFFFFF),
      body: SignUpViewBody(),
    );
  }
}