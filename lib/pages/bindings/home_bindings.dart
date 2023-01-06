import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependencias/pages/bindings/bindings_controllers.dart';

class HomeBindings extends StatelessWidget {
  const HomeBindings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Buildando pagina HomeBindings');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Bindings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.find<BindingsControllers>().nome),
          ],
        ),
      ),
    );
  }
}
