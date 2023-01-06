import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependencias/pages/basico/basico_home_page.dart';
import 'package:getx_dependencias/pages/bindings/bindings_controllers.dart';
import 'package:getx_dependencias/pages/bindings/bindings_exemple.dart';
import 'package:getx_dependencias/pages/bindings/home_bindings.dart';
import 'package:getx_dependencias/pages/bindings/middleware_bindings.dart';
import 'package:getx_dependencias/pages/home_page.dart';
import 'package:getx_dependencias/pages/initialBindings/initial_binding_page.dart';
import 'package:getx_dependencias/pages/initialBindings/initial_bindings.dart';
import 'package:getx_dependencias/pages/metodos/lazyPut/lazy_put_page.dart';
import 'package:getx_dependencias/pages/metodos/metodos_home_page.dart';
import 'package:getx_dependencias/pages/metodos/put/put_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBindings(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/basico', page: () => BasicoHomePage()),
        GetPage(
          name: '/metodos',
          page: () => const MetodosHomePage(),
          children: [
            GetPage(name: '/putpage', page: () => const PutPage()),
            GetPage(name: '/lazyPut', page: () => LazyPutPage()),
          ],
        ),
        GetPage(
          name: '/bindings',
          binding: BindingsExemple(),
          middlewares: [
            MiddlewareBindings(),
          ],
          page: () => const HomeBindings(),
        ),
        GetPage(
          name: '/bindings_builder',
          binding: BindingsBuilder.put(() {
            BindingsControllers(nome: 'Inicializado dentro do GetPage');
          }),
          page: () => const HomeBindings(),
        ),
        GetPage(
          name: '/initial_binding',
          page: () => const InitialBindingPage(),
        ),
      ],
    );
  }
}
