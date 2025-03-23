import 'package:flutter/material.dart';
import 'package:rentall/data.models/equipment.dart';
import 'package:rentall/presentation/widgets/equipments_card.dart';

class EquipmentListScreen extends StatelessWidget {
  // const EquipmentListScreen({Key? Key}) : super(key: Key);

  final List<Equipment> equipments = [
    Equipment(
      model: "Model-1",
      location: "20-km",
      powerRating: 20,
      pricePerHour: 50,
    ),
    Equipment(
      model: "Model-2",
      location: "40-km",
      powerRating: 20,
      pricePerHour: 80,
    ),
    Equipment(
      model: "Model-3",
      location: "10-km",
      powerRating: 60,
      pricePerHour: 100,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Choose your Equipments"),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: equipments.length,
        itemBuilder: (context, index) {
          return EquipmentsCard(equipment: equipments[index]);
        },
      ),
    );
  }
}
