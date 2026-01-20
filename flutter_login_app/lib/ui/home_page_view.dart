import 'package:flutter/material.dart';
import 'package:flutter_login_app/ui/my_custom_form.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MyCustomForm(),
    );
  }
}