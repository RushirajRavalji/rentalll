// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:rentall/presentation/bloc/equipment_bloc.dart';
// import 'package:rentall/presentation/bloc/equipment_state.dart';
// import 'package:rentall/presentation/widgets/equipments_card.dart';

// class EquipmentListScreen extends StatelessWidget {
//   const EquipmentListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF121212), // Dark background
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF1E1E1E), // Dark app bar
//         title: const Text(
//           "Choose your Equipment",
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         elevation: 0, // Remove shadow for minimal look
//         iconTheme: const IconThemeData(
//           color: Colors.white,
//         ), // White back button
//       ),
//       body: BlocBuilder<EquipmentBloc, EquipmentState>(
//         builder: (context, state) {
//           if (state is EquipmentsLoading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is EquipmentLoaded) {
//             return ListView.builder(
//               padding: const EdgeInsets.only(top: 10, bottom: 20),
//               itemCount:
//                   state
//                       .Equipments
//                       .length, // Changed from Equipments to equipments
//               itemBuilder: (context, index) {
//                 return EquipmentsCard(
//                   equipment: state.Equipments[index],
//                 ); // Changed from Equipments to equipments
//               },
//             );
//           } else if (state is EquipmentsError) {
//             return Center(
//               child: Text(
//                 'Error: ${state.message}',
//                 style: const TextStyle(color: Colors.white),
//               ),
//             );
//           }
//           return Container();
//         },
//       ),
//     );
//   }
// }

//?<-------------------->
import 'package:flutter/material.dart';
import 'package:rentall/data/models/equipment.dart';
import 'package:rentall/presentation/bloc/equipment_bloc.dart';
import 'package:rentall/presentation/bloc/equipment_state.dart';
import 'package:rentall/presentation/widgets/equipments_card.dart';

class EquipmentListScreen extends StatelessWidget {
  EquipmentListScreen({super.key});
  final List<Equipment> equipments = [
    Equipment(
      model: "Advanced Patient Monitor",
      location: "20-km",
      powerRating: 20.0,
      pricePerHour: 50.0,
      detailedLocation: "Wing A, Floor 2, Room 201",
      floor: 2,
      roomNumber: "201",
      isAvailable: true,
    ),
    Equipment(
      model: "Advanced Patient Monitor",
      location: "40-km",
      powerRating: 20.0,
      pricePerHour: 80.0,
      detailedLocation: "Wing B, Floor 1, Room 105",
      floor: 1,
      roomNumber: "105",
      isAvailable: true,
    ),
    Equipment(
      model: "Advanced Patient Monitor",
      location: "10-km",
      powerRating: 60.0,
      pricePerHour: 100.0,
      detailedLocation: "Wing C, Floor 3, Room 310",
      floor: 3,
      roomNumber: "310",
      isAvailable: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Dark background
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E), // Dark app bar
        title: const Text(
          "Choose your Equipment",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0, // Remove shadow for a minimal look
        iconTheme: const IconThemeData(
          color: Colors.white, // White back button
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        itemCount: equipments.length,
        itemBuilder: (context, index) {
          return EquipmentsCard(equipment: equipments[index]);
        },
      ),
    );
  }
}
