import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentall/domain/usecases/get_equipments.dart';
import 'package:rentall/presentation/bloc/equipment_event.dart';
import 'package:rentall/presentation/bloc/equipment_state.dart';

class EquipmentBloc extends Bloc<EquipmentEvent, EquipmentState> {
  final GetEquipments getEquipments;

  EquipmentBloc({required this.getEquipments}) : super(EquipmentsLoading()) {
    on<LoadEquipments>((event, emit) async {
      emit(EquipmentsLoading());
      try {
        final equipments = await getEquipments.call();
        emit(EquipmentLoaded(equipments));
      } catch (e) {
        emit(EquipmentsError(e.toString()));
      }
    });
  }
}
