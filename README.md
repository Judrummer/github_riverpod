# github_riverpod

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install)
- [FVM (Flutter Version Management)](https://fvm.app/docs/getting_started/installation)

### Setting Up Environment Variables

1. Create a `.env` file in the root directory of the project.
2. Add your GitHub API key to the `.env` file:

    ```dotenv
    GITHUB_API_KEY=your_github_api_key_here
    ```

### Building the App

To build the app using `fvm`, run the following command:

```sh
fvm flutter pub get
```
```sh
fvm flutter pub run build_runner build --delete-conflicting-outputs
```