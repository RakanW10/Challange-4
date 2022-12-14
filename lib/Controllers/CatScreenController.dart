import 'package:challenge_4/Models/cat.dart';
import 'package:challenge_4/Services/API/ApiClassMethod.dart';
import 'package:challenge_4/Services/API/endPoint.dart';
import 'package:get/get.dart';

class CatController extends GetxController {
  cat? mycat;

  fetchUsers() async {
    var catData = await ClassApi.MethodGet(endPoint: EndPoint.fact);
    print(catData);
    mycat = cat.fromJson(json: catData);
    print(catData);
    update();
  }

  @override
  void onInit() async {
    fetchUsers();
  }
}
