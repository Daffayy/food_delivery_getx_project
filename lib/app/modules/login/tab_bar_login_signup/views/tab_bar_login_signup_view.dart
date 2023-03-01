import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widget/color_theme_widget/color_theme_widget.dart';
import '../../login_screen/views/login_screen_view.dart';
import '../../sign_up_screen/views/sign_up_screen_view.dart';
import '../controllers/tab_bar_login_signup_controller.dart';

class TabBarLoginSignupView extends GetView<TabBarLoginSignupController> {
  const TabBarLoginSignupView({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        ListView(children: <Widget>[
          Container(
            height: 200,
            color: Colors.white,
            child: Image.asset('assets/img/login_page.png',
                height: 162.38, width: 131.53),
          ),
          Container(
            color: background,
            child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            )),
                        child: TabBar(
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          indicatorColor: deepOrange800,
                          indicatorPadding:
                              const EdgeInsets.symmetric(horizontal: 50),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          tabs: const [
                            Tab(text: 'Login'),
                            Tab(text: 'Sign-up'),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: 500,
                          width: double.infinity,
                          child: TabBarView(children: <Widget>[
                            LoginScreenView(),
                            SignUpScreenView()
                          ]))
                    ])),
          ),
        ]),
      ]),
    );
  }
}
