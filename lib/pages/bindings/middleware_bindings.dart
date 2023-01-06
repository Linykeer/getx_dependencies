import 'package:get/get.dart';

class MiddlewareBindings extends GetMiddleware {
  // Executado logo antes da chamada da pagina
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    print('onBindingsStart $onBindingsStart');
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    print('onPageBuildStart $onPageBuildStart');
    return super.onPageBuildStart(page);
  }
}
