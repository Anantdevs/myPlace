# My Place App

This Flutter app is built for both Android and iOS platforms. It allows users to pick a location on the map and store it, along with a title and an image taken from their device camera. The location and other data are stored locally on the device using SQLite. The app also displays a static map snapshot based on the random location chosen by the user using Google Maps.

## Dependencies

The app uses the following dependencies:

- `provider`: for state management
- `image_picker`: for picking images from the device camera
- `path_provider`: for accessing the device's file system
- `path`: for manipulating file paths
- `sqflite`: for local data storage
- `location`: for fetching the user's coordinates
- `google_maps_flutter`: for displaying the map and taking snapshots
- `http`: for making HTTP requests (used to fetch the static map snapshot)

## Setup

To run the app, you need to have Flutter installed on your machine. Once you have cloned the repository, open the `location_helper.dart` file and enter your Google Maps API Key in the `GOOGLE_API_KEY` field. Then run the following commands:

```
flutter pub get
flutter run
```

This will start the app on your connected device or emulator.

## Functionality

The app has two main screens:

- Map screen: displays a Google Map and allows the user to pick a location by tapping on the map. The app then fetches the user's coordinates and displays a static map snapshot based on the chosen location. The user can then enter a title for the location and take a photo using their device's camera. When the user saves the location, the data is stored locally using SQLite.
- Place details screen: displays a list of all the saved locations, with their titles, photos, and static map snapshots. The user can tap on a location to view its details, including the full-size photo and the exact coordinates.

## Contributing

Contributions to this project are welcome. To get started, fork the repository and create a new branch for your feature or bug fix. Once you have made your changes, submit a pull request for review.