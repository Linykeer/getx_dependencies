import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependencias/pages/initialBindings/auth_model.dart';

class InitialBindingPage extends StatelessWidget {
  const InitialBindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Bindings'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Get.find<AuthModel>().name),
        ],
      )),
    );
  }
}
