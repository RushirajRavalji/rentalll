import 'package:rentall/data/models/equipment.dart';
import 'package:rentall/domain/repository/equipments_repositories.dart';

class GetEquipments {
  final EquipmentsRepositories repositories;

  GetEquipments(this.repositories);

  Future<List<Equipment>> call() async {
    return await repositories.fetchEquipments();
  }
}
