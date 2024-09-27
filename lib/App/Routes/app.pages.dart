 import 'package:get/get_navigation/src/routes/get_route.dart';

 import '../Bindings/home_bindings.dart';
import '../View/home_view.dart';

/*Purpose of part 'app.routes.dart';
Modularity: Using part files helps keep code organized by
separating concerns, such as routing, controllers, and views.
This makes the main file cleaner and easier to navigate.
Access to private members: Members (variables, functions)
defined in the main library file are accessible in the part file,
enabling you to use shared private members without needing to expose them.*/

part  'app.routes.dart';



 /// This class manages all the application pages (routes) in the app.
 ///
 /// It uses GetX's `GetPage` for defining named routes and their respective
 /// bindings and views. The `AppPages` class ensures that the routes
 /// and their dependencies are loaded correctly when navigating between screens.

class AppPages {
  // Private constructor to prevent instantiation, since all members are static.

  AppPages._();

  /// The initial route for the application when it starts.
  /// It navigates to the Home page defined in `AppRoutes`.

  static const INITIAL = AppRoutes.HOME;

  /// This list contains all the routes in the application.
  ///
  /// Each `GetPage` defines:
  /// - `name`: The route name (URL).
  /// - `page`: The page to load when the route is called.
  /// - `binding`: The binding class that provides dependencies for the page.


  static final routes = [
    GetPage(

      // The name of the route. `_Paths.HOME` corresponds to the route string.
      name: _Paths.HOME,
      // The page to display when the route is accessed. In this case, it shows `HomeView`.

      page: () => const HomeView(),
      // Binding used for injecting dependencies, such as controllers or repositories.

      binding: HomeBindings(),
    ),
  ];
}