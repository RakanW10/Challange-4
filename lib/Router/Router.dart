import 'package:challenge_4/Views/CatScreen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routerApp = [
  GetPage(name: NameRoute.cat, page: () => CatScreen()),
];

abstract class NameRoute {
  static String cat = "/cats";
}
