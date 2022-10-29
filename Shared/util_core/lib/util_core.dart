import 'main.dart';

abstract class ICore {
  late final INavigationRouter navigation;

  Future<void> init();
}

class UtilCore implements ICore {
  UtilCore({required this.navigation});

  @override
  late final INavigationRouter navigation;

  @override
  Future<void> init() async {
    navigation.registerNavigation();
  }
}
