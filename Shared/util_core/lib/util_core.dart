import 'main.dart';
import 'routes/navigation_router.dart';

abstract class ICore {
  final INavigationRouter navigation;

  ICore({required this.navigation});

  Future<void> init();
}

class UtilCore implements ICore {
  @override
  final INavigationRouter navigation;

  UtilCore({
    this.navigation = const NavigationRouter(),
  });

  @override
  Future<void> init() async {
    navigation.registerNavigation();
  }
}
