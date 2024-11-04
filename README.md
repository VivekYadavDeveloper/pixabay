# Flutter Image Gallery App

**Overview**
This project is a Flutter web application that displays a gallery of images fetched from the Pixabay API. 
The images are displayed in a responsive square grid format, with the ability to load new images as the user scrolls down.

## Getting Started

# **Features**

**Responsive Design:** Automatically adjusts the number of columns based on the screen width.

**Image Gallery**: Displays images from the Pixabay API with the number of likes and views shown under each image.

**Infinite Scrolling**: Automatically loads more images as the user scrolls down the gallery.

# **Technologies Used With Pagination**

**Flutter**: The primary framework used to build the web application.

**GetX**: A powerful state management solution for Flutter, providing dependency injection, route management, and state management.

**HTTP:** For making API requests to fetch images from the Pixabay API.

**Pixabay API**: A free API that provides access to a vast collection of images.

# **Project Structure**

lib/
├── App/
│   ├── Controller/         # Contains the GetX controllers
│   ├── Data/
│   │   ├── Models/         # Contains data models for parsing JSON
│   │   └── Repo/           # Contains repository for API calls
│   └── Views/              # Contains UI components
├── main.dart               # Entry point of the application
└── app.routes.dart         # Contains routing configurations


- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
