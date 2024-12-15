# Weather Tracker App

Weather Tracker is a simple iOS application built using **Swift** and **SwiftUI**. It fetches weather data for a selected city from [WeatherAPI](https://www.weatherapi.com/) and provides features like weather details, city persistence, and error handling.

---

## Features

- Search for a city and display weather information:
  - City name
  - Temperature
  - Weather condition (with an icon)
  - Humidity
  - UV index
  - "Feels like" temperature
- Persist the selected city across app launches using **UserDefaults**.
- Handle errors gracefully and display user-friendly messages.
- Built with **MVVM architecture** for clean, modular, and testable code.

---

## Prerequisites


- iOS 15.6 or later
- A [WeatherAPI](https://www.weatherapi.com/) API key (free tier is sufficient).

---

## Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/DanielAzmy/Nooro.                  

```

### 2. Open the Project in Xcode
1. Launch **Xcode**.
2. Open the `WeatherTracker.xcodeproj` file.

### 3. Install Dependencies
No additional dependencies are required for this project.


### 5. Build and Run the Project
1. Select a simulator or a connected iOS device.
2. Click **Run** (or press `Cmd + R`).

---

## Project Structure

```plaintext
WeatherTracker/
├── Models/            # Data models (e.g., WeatherResponse, City)
├── Views/             # SwiftUI Views (e.g., HomeView, SearchView)
├── ViewModels/        # View models (e.g., WeatherViewModel)
├── Services/          # Networking and persistence services (e.g., WeatherAPIService, CityPersistenceService)
├── Resources/         # Assets, fonts, and other resources
├── WeatherTrackerApp/ # App entry point and environment setup
```

---





## Contact
If you have any questions or feedback, please feel free to reach out:
- Email: danielazmy541@gmail.com
