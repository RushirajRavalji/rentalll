import 'package:flutter/material.dart';
import 'package:rentall/data.models/equipment.dart';
import 'package:rentall/presentation/pages/equipment_detail_page.dart';

class EquipmentsCard extends StatelessWidget {
  final Equipment equipment;
  final bool isDetailCard;

  const EquipmentsCard({
    super.key,
    required this.equipment,
    this.isDetailCard = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          isDetailCard
              ? null
              : () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EquipmentDetailPage(),
                  ),
                );
              },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: isDetailCard ? 0 : 20,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E), // Dark card background
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with gradient overlay and status badge
            Stack(
              children: [
                // Equipment image with rounded corners
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/onboarding.png',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                // Gradient overlay
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                    ),
                  ),
                ),

                // Price tag
                Positioned(
                  bottom: 15,
                  right: 15,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF00BFA5), // Teal accent
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '\$${equipment.pricePerHour.toStringAsFixed(2)}/hr',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                // Status badge (Available/In Use)
                Positioned(
                  top: 15,
                  left: 15,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CAF50), // Green
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Available',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Equipment details section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Model name
                  Text(
                    equipment.model,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      letterSpacing: -0.5,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Equipment specs
                  Row(
                    children: [
                      // Location
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color(
                                  0xFF2979FF,
                                ).withOpacity(0.15), // Blue with opacity
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.location_on_outlined,
                                color: Color(0xFF2979FF), // Blue
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Flexible(
                              child: Text(
                                equipment.location,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFBDBDBD), // Light gray
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Power rating
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color(
                                  0xFFFF9800,
                                ).withOpacity(0.15), // Orange with opacity
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.electric_bolt_outlined,
                                color: Color(0xFFFF9800), // Orange
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '${equipment.powerRating.toStringAsFixed(0)}W',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFFBDBDBD), // Light gray
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Show additional details if this is a detail card
                  if (isDetailCard) ...[
                    const SizedBox(height: 16),
                    const Divider(color: Color(0xFF333333)), // Dark divider
                    const SizedBox(height: 16),

                    // Equipment description
                    const Text(
                      'Equipment Description',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'This high-performance ${equipment.model} is designed for continuous operation in hospital settings. Features include adjustable power settings, safety certifications, and user-friendly controls.',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFFBDBDBD), // Light gray
                        height: 1.5,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
