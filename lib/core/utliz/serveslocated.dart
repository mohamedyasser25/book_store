
import 'package:get_it/get_it.dart';

import '../../features/home/data/rebos/homereposimplement.dart';
import '../../features/search/data/repo/searchrepoimple.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeReposimple>(HomeReposimple());
  getIt.registerSingleton<Searchrepoimple>(Searchrepoimple());
}
