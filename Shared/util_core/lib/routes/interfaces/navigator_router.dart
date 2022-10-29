import 'base_modules_navigation.dart';

abstract class INavigationRouter {
  final List<IBaseModuleNavigation> modules = [];
  void registerNavigation();
}
