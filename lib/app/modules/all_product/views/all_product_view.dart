import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_product_controller.dart';

class AllProductView extends GetView<AllProductController> {
  const AllProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AllProductView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AllProductView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
