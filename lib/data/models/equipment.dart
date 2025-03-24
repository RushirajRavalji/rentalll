class Equipment {
  final String model;
  final String location;
  final double powerRating;
  final double pricePerHour;
  final String roomNumber;
  final int floor;
  final String detailedLocation;
  final bool isAvailable;

  Equipment({
    required this.model,
    required this.location,
    required this.powerRating,
    required this.pricePerHour,
    required this.roomNumber,
    required this.floor,
    required this.detailedLocation,
    required this.isAvailable,
  });

  factory Equipment.fromMap(Map<String, dynamic> map) {
    return Equipment(
      model: map['model'] ?? '',
      location: map['location'] ?? '',
      powerRating: (map['powerRating'] as num?)?.toDouble() ?? 0.0,
      pricePerHour: (map['pricePerHour'] as num?)?.toDouble() ?? 0.0,
      roomNumber: map['roomNumber'] ?? '',
      floor: (map['floor'] as num?)?.toInt() ?? 0,
      detailedLocation: map['detailedLocation'] ?? '',
      isAvailable: map['isAvailable'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'model': model,
      'location': location,
      'powerRating': powerRating,
      'pricePerHour': pricePerHour,
      'roomNumber': roomNumber,
      'floor': floor,
      'detailedLocation': detailedLocation,
      'isAvailable': isAvailable,
    };
  }
}
