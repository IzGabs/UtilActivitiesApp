import 'interfaces/base_modules_navigation.dart';

extension FormatPrefix on IBaseModuleNavigation {
  void formatRoutesPrefix() {
    final temp = moduleRoutes.map(
      (key, value) => MapEntry('$modulePrefix/$key', value),
    );

    moduleRoutes = temp;
  }
}
