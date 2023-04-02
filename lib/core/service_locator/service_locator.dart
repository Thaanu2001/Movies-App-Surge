import 'package:get_it/get_it.dart';

import '../../features/movie_list/data/data_provider/movies_data_provider.dart';
import '../../features/movie_list/data/data_provider/movies_data_provider_impl.dart';
import '../../features/movie_list/data/repository/movies_repository.dart';
import '../../features/movie_list/data/repository/movies_repository_impl.dart';

final locator = GetIt.instance;

void setupLocator() {
  registerLazySingleton<MoviesDataProvider>(MoviesDataProviderImpl());

  registerLazySingleton<MoviesRepository>(
    MoviesRepositoryImpl(dataProvider: locator()),
  );
}

void registerLazySingleton<T extends Object>(T object) {
  return locator.registerLazySingleton<T>(() => object);
}
