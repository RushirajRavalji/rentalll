import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rentall/data/models/equipment.dart';

class FirebaseEquipmentDatasource {
  final FirebaseFirestore firestore;

  FirebaseEquipmentDatasource({required this.firestore});

  Future<List<Equipment>> getEquipments() async {
    final snapshot = await firestore.collection('Equipments').get();
    return snapshot.docs.map((doc) => Equipment.fromMap(doc.data())).toList();
  }
}
