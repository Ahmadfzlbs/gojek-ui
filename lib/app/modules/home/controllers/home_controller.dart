import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Object?>> streamProduct() {
    CollectionReference product = firestore.collection("products");
    return product.orderBy("time", descending: true).limitToLast(10).snapshots();
  }
}
