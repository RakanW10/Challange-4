import 'package:challenge_4/Controllers/CatScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatScreen extends StatelessWidget {
  CatScreen({super.key});
  CatController catController = Get.put(CatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GetBuilder<CatController>(builder: (_) {
            return catController.mycat == null
                ? const Text("no data")
                : Text(catController.mycat!.fact!);
          }),
          ElevatedButton(
            onPressed: () {
              catController.fetchUsers();
            },
            child: const Text("GetData"),
          ),
        ],
      ),
    );
  }
}
