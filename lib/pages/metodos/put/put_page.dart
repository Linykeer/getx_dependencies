import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependencias/pages/metodos/put/put_controller.dart';
import 'package:getx_dependencias/pages/metodos/put/put_controller_permanent.dart';

class PutPage extends StatefulWidget {
  const PutPage({Key? key}) : super(key: key);

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {
  final controller = Get.put(PutController());
  final controller2 = Get.put(PutControllerPermanent(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina PUT'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Time Put: ${controller.timestamp}'),
          Text('Time Put: ${controller2.timestamp}'),
        ],
      )),
    );
  }
}
