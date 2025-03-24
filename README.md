<<<<<<< HEAD
# rentall

File Structure 
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
├── assets/                             # (Likely exists for images, icons, etc.)
└── README.md                           # Project documentation (may or may not exist)
