import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../../../widget/button_widget/button_widget.dart';
import '../controllers/sign_up_screen_controller.dart';

class SignUpScreenView extends GetView<SignUpScreenController> {
 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: const Color(0xFFF5F5F8),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                child: Form(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration:
                        InputDecoration(hintText: "your name", labelText: "Name"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Form(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "your phone number", labelText: "Phone Number"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Form(
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "you@example.com", labelText: "E-mail Address"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Form(
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "your password",
                      labelText: "Password",
                    ),
                    autofocus: false,
                    obscureText: true,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              ButtonWidget(textTitle: "Sign-up", screen: Routes.LOGIN_SCREEN)
            ],
          ),
        ),
      ),
    );
  }
}
