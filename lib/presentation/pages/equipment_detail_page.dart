import 'package:flutter/material.dart';
import 'package:rentall/data.models/equipment.dart';
import 'package:rentall/presentation/widgets/equipments_card.dart';

class EquipmentDetailPage extends StatelessWidget {
  const EquipmentDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("About Equipment")],
        ),
      ),
      body: Column(
        children: [
          EquipmentsCard(
            equipment: Equipment(
              model: "Model-1",
              location: "20-km",
              powerRating: 20,
              pricePerHour: 50,
            ),
          ),
        ],
      ),
    );
  }
}
