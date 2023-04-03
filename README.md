# Movies App

Welcome to the Movies App, This is a simple Flutter application that displays a list of top rated movies from [themoviedb.org](https://themoviedb.org).

## Features

- Lazy Loading: Movies are loaded on scroll to optimize.
- Offline Support: If there is no internet connection, the app will display pre-fetched data.
- Internet Connection Notify: If the user loses internet connectivity, the app will notify them to avoid confusion.
- Pull to Refresh: Users can refresh the list of movies manually with a simple pull-to-refresh gesture.
- Portrait Mode UI: The app's user interface is designed to work in portrait mode.
- Error Handling: The app handles network and device errors to provide a seamless experience.
- Loading Indicator: The app displays a loading indicator to let users know when data is being fetched.

## Clean Architecture Pattern (With Bloc State Managment Library)
Clean Architecture is a popular software design pattern that emphasizes the separation of concerns in software development. It is based on the SOLID principles of object-oriented design and promotes modularity, testability, and maintainability in software systems.
### Pros
- The Clean Architecture promotes the use of unit tests and automated testing in general. By keeping the state within the domain layer, it becomes easier to write tests that verify the correctness of the application's state changes and updates.
- The Clean Architecture separates the application into layers, with each layer having a specific responsibility. By keeping the state within the domain layer, it becomes easier to modify or replace the state management code without affecting the other layers of the application.
- By separating the state management logic from other application logic, it becomes easier to maintain and evolve the state management code over time.
- The domain layer can be reused across different applications, which can reduce development time and improve code quality.
### Cons
- Clean Architecture pattern for state management is that it can introduce additional complexity and overhead to the application. This is because the state management logic is separated from the rest of the application, which can require additional code and abstractions to manage the state changes.

## Installation

1. Clone the repository:
```
git clone https://github.com/Thaanu2001/Movies-App-Surge.git
```

2. Navigate to the project directory:
```
cd Movies-App-Surge
```

3. Install dependencies:
```
flutter pub get
```

4. Run the app:
```
flutter run
```

## Contributing

Thank you for your interest in contributing to the Movie App. Currently, we are not accepting any contributions.

## License

This project is currently not licensed.
