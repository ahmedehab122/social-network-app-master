




import 'package:get_it/get_it.dart';
import 'package:social_network/cubit/state.dart';

import 'cubit/cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(
    () => AppBloc(),
  );
}
