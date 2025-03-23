import 'package:flutter/material.dart';
import 'package:rentall/data.models/equipment.dart';

class EquipmentsCard extends StatelessWidget {
  final Equipment equipment;
  const EquipmentsCard({super.key, required this.equipment});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Image.asset('assets/equipment_image.png', height: 120),
          Text(
            equipment.model,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/location.png'),
                  const SizedBox(width: 5),
                  Text(equipment.location),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/power.png'),
                  const SizedBox(width: 5),
                  Text('${equipment.powerRating.toStringAsFixed(0)}W'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '\$${equipment.pricePerHour.toStringAsFixed(2)}/hr',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
