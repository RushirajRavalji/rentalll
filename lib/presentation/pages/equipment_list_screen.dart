import 'package:flutter/material.dart';
import 'package:rentall/data.models/equipment.dart';
import 'package:rentall/presentation/widgets/equipments_card.dart';

class EquipmentListScreen extends StatelessWidget {
  EquipmentListScreen({super.key});

  final List<Equipment> equipments = [
    Equipment(
      model: "Advanced Patient Monitor",
      location: "20-km",
      powerRating: 20,
      pricePerHour: 50,
    ),
    Equipment(
      model: "Advanced Patient Monitor",
      location: "40-km",
      powerRating: 20,
      pricePerHour: 80,
    ),
    Equipment(
      model: "Advanced Patient Monitor",
      location: "10-km",
      powerRating: 60,
      pricePerHour: 100,
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
        elevation: 0, // Remove shadow for minimal look
        iconTheme: const IconThemeData(
          color: Colors.white,
        ), // White back button
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
