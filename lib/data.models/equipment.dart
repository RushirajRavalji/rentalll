class Equipment {
  final String model;
  final String location;
  final double powerRating;
  final double pricePerHour;

  Equipment({
    required this.model,
    required this.location,
    required this.powerRating,
    required this.pricePerHour, required String roomNumber, required int floor, required String detailedLocation, required bool isAvailable,
  });
}
