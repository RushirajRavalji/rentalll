import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:rentall/data/datasources/firebase_equipment_datasource.dart';
import 'package:rentall/data/repository/equipments_repository_impl.dart';
import 'package:rentall/domain/repository/equipments_repositories.dart';
import 'package:rentall/domain/usecases/get_equipments.dart';
import 'package:rentall/presentation/bloc/equipment_bloc.dart';

final getIt = GetIt.instance;

Future<void> initInjection() async {
  // Changed to async to match your main() await
  try {
    // Firebase
    getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance,
    );

    // Data sources
    getIt.registerLazySingleton<FirebaseEquipmentDatasource>(
      () => FirebaseEquipmentDatasource(firestore: getIt<FirebaseFirestore>()),
    );

    // Repositories
    getIt.registerLazySingleton<EquipmentsRepositories>(
      () => EquipmentsRepositoryImpl(getIt<FirebaseEquipmentDatasource>()),
    );

    // Use cases
    getIt.registerLazySingleton<GetEquipments>(
      () => GetEquipments(getIt<EquipmentsRepositories>()),
    );

    // BLoCs
    getIt.registerFactory<EquipmentBloc>(
      () => EquipmentBloc(getEquipments: getIt<GetEquipments>()),
    );
  } catch (e) {
    print('Error initializing dependencies: $e');
    rethrow; // Added to propagate errors to the main function
  }
}
