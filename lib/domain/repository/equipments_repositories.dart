import 'package:rentall/data/models/equipment.dart';

abstract class EquipmentsRepositories {
  Future<List<Equipment>> fetchEquipments();
}
