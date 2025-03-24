import 'package:rentall/data/datasources/firebase_equipment_datasource.dart';
import 'package:rentall/data/models/equipment.dart';
import 'package:rentall/domain/repository/equipments_repositories.dart';

class EquipmentsRepositoryImpl implements EquipmentsRepositories {
  final FirebaseEquipmentDatasource datasource;

  EquipmentsRepositoryImpl(this.datasource);

  @override
  Future<List<Equipment>> fetchEquipments() {
    return datasource.getEquipments();
  }
}
