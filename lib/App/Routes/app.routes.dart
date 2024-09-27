part of 'app.pages.dart';


/// This abstract class holds the route names used in the application.
///
/// It uses a private constructor to prevent instantiation, as it only serves as a
/// configuration holder for the application's route constants.

abstract class AppRoutes {
  AppRoutes._();

  static const HOME = _Paths.HOME;
}

abstract class _Paths {
  _Paths._();

  static const HOME = '/home';
}
