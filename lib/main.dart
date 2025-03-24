import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rentall/data/models/equipment.dart';
import 'package:rentall/firebase_options.dart';
import 'package:rentall/onboarding_page.dart';
import 'package:rentall/presentation/pages/maps_detail_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print("Db connected successfully");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a sample equipment object for testing
    final sampleEquipment = Equipment(
      model: "Generator XL200",
      location: "Downtown",
      powerRating: 5.5,
      pricePerHour: 45.99,
      detailedLocation: "Main Street, Floor 1, Room 101",
      floor: 1,
      roomNumber: "101",
      isAvailable: true,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: const OnboardingPage(),
      // home: MapsDetailPage(equipment: sampleEquipment),
    );
  }
}
