import 'package:get/get.dart';

import '../modules/all_product/bindings/all_product_binding.dart';
import '../modules/all_product/views/all_product_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ALL_PRODUCT,
      page: () => const AllProductView(),
      binding: AllProductBinding(),
    ),
  ];
}
