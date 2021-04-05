import 'package:eduvid/models/models.dart';
import 'package:eduvid/service/service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeProvider = Provider<HomeScreenService>(
  (ref) => HomeScreenService(),
);

final homeScreenProivder = FutureProvider<HomePageModel>((ref) async {
  final home = ref.watch(homeProvider);
  return await home.getAll();
});
