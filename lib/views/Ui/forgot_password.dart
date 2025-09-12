import 'package:ecom_app/core/components/TextFormfield_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: TextformfieldCustomWidget(
                  hintText: "Email",
                  ispassword: false,
                  labeltText: "Email",
                  controller: emailController),
            )
          ],
        ),
      )),
    );
  }
}
