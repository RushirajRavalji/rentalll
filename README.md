# RentAll App

A Flutter application for equipment rental with location-based features.

## Project Structure

```
rentall_app/
├── lib/
│   ├── main.dart                       # Entry point of the app, sets up Firebase and BLoC providers
│   ├── onboarding_page.dart            # Initial screen shown to users
│   ├── firebase_options.dart           # Firebase configuration options
│   ├── injection_container.dart        # Dependency injection setup using GetIt
│   ├── data/
│   │   ├── datasources/
│   │   │   └── firebase_equipment_datasource.dart  # Firebase data fetching implementation
│   │   ├── models/
│   │   │   └── equipment.dart                      # Equipment data model
│   │   └── repository/
│   │       └── equipments_repository_impl.dart     # Repository implementation
│   ├── domain/
│   │   ├── repository/
│   │   │   └── equipments_repositories.dart        # Repository interface definitions
│   │   └── usecases/
│   │       └── get_equipments.dart                 # Business logic for fetching equipment
│   └── presentation/
│       ├── bloc/
│       │   ├── equipment_bloc.dart                 # BLoC for managing equipment state
│       │   ├── equipment_event.dart                # Events for the equipment BLoC
│       │   └── equipment_state.dart                # States for the equipment BLoC
│       ├── pages/
│       │   ├── equipment_detail_page.dart          # Screen showing detailed equipment info
│       │   ├── equipment_list_screen.dart          # Screen displaying list of equipment
│       │   └── maps_detail_page.dart               # Screen showing equipment location on map
│       └── widgets/
│           └── equipments_card.dart                # Widget for displaying individual equipment items
├── pubspec.yaml                        # Flutter project dependencies and metadata
├── assets/                             # Folder for images, icons, etc.
└── README.md                           # Project documentation
```

## Architecture

The app follows a clean architecture pattern with three distinct layers:

1. **Data Layer**
   - Handles external data sources (Firebase)
   - Defines data models
   - Implements repository interfaces

2. **Domain Layer**
   - Contains business logic
   - Defines repository interfaces
   - Implements use cases

3. **Presentation Layer**
   - Manages UI components
   - Implements BLoC pattern for state management
   - Handles user interactions

## Dependencies

- **flutter_bloc**: State management
- **firebase_core**: Firebase integration
- **cloud_firestore**: Firestore database access
- **get_it**: Dependency injection

## Features

- Browse available equipment for rent
- View detailed information about equipment
- See equipment location on maps
- Rent equipment through the app

## Setup Instructions

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Configure Firebase:
   - Create a Firebase project
   - Add your app to the Firebase project
   - Download and add the configuration files
4. Run the app with `flutter run`

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
