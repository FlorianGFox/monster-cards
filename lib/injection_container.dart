import 'package:get_it/get_it.dart';

import 'features/monster_cards/data/datasource/dummy_data_source.dart';
import 'features/monster_cards/data/datasource/local_data_source.dart';
import 'features/monster_cards/data/repositories/monster_repository_impl.dart';
import 'features/monster_cards/domain/repositories/monster_repository.dart';
import 'features/monster_cards/domain/usecases/get_all_monsters.dart';
import 'features/monster_cards/presentation/bloc/monster_cards_bloc.dart';

final sl = GetIt.instance;

void init() {
  //bloc
  sl.registerFactory(
    () => MonsterCardsBloc(
      getAll: sl(),
    ),
  );

  //use cases
  sl.registerLazySingleton(() => GetAllMonsters(sl()));

  //repository
  sl.registerLazySingleton<MonsterRepository>(
      () => MonsterRepositoryImpl(sl()));

  //data
  sl.registerLazySingleton<LocalDataSource>(() => DummyDataSource());
}
