import 'package:get/get.dart';
import 'package:getx_dependencias/pages/initialBindings/auth_model.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      AuthModel(
          name: 'Linykeer Almeida',
          email: 'linykeeralmeida@gmail.com',
          curso: 'GetX'),
      permanent: true,
    );
  }
}
