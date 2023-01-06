import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependencias/pages/bindings/bindings_controllers.dart';
import 'package:getx_dependencias/pages/bindings/bindings_exemple.dart';
import 'package:getx_dependencias/pages/bindings/home_bindings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/basico');
                },
                child: const Text('Basico')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/metodos');
                },
                child: const Text('Metodos')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bindings');
                },
                child: const Text('Bindings')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bindings_builder');
                },
                child: const Text('Bindings Builder')),
            TextButton(
                onPressed: () {
                  Get.to(const HomeBindings(),
                      binding: BindingsBuilder.put(() => BindingsControllers(
                          nome: 'Inicializado pelo bind sem rota nomeada')));
                },
                child: const Text('Bindings Sem Rota Nomeada')),
            TextButton(
                onPressed: () {
                  Get.toNamed('/initial_binding');
                },
                child: const Text('Initial Binding')),
          ],
        ),
      ),
    );
  }
}
