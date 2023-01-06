import 'package:get/get.dart';
import 'package:getx_dependencias/pages/bindings/bindings_controllers.dart';

class BindingsExemple extends Bindings {
  BindingsExemple() {
    print('Iniciando Binding Exemple');
  }
  @override
  void dependencies() {
    print('Iniciando Binding Exemple Dependencies');
    Get.put(BindingsControllers(nome: 'Inicializado Dentro do binding'));
  }
}
