import 'interfaces/base_modules_navigation.dart';
import 'interfaces/navigator_router.dart';

class NavigationRouter implements INavigationRouter {
  const NavigationRouter();

  @override
  List<IBaseModuleNavigation> get modules => [];

  @override
  void registerNavigation() {
    for (var element in modules) {
      try {
        element.registerRoutes();
      } catch (e) {
        print(e.toString());
      }
    }
  }
}
