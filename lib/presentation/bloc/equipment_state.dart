import 'package:rentall/data/models/equipment.dart';

abstract class EquipmentState {}

class EquipmentsLoading extends EquipmentState {}

class EquipmentLoaded extends EquipmentState {
  final List<Equipment> Equipments;

  EquipmentLoaded(this.Equipments);
}

class EquipmentsError extends EquipmentState {
  final String message;
  EquipmentsError(this.message);
}
