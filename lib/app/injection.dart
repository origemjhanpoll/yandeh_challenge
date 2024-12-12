import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:yandeh_challenge/features/home/data/datasources/remote_datasource.dart';
import 'package:yandeh_challenge/features/home/data/repositories/sections_repository.dart';
import 'package:yandeh_challenge/features/home/domain/repositories/i_sections_repository.dart';
import 'package:yandeh_challenge/features/home/domain/usecases/get_sections.dart';
import 'package:yandeh_challenge/features/home/presentation/bloc/sections_bloc.dart';

final di = GetIt.instance;

Future<void> init() async {
  di.registerLazySingleton<http.Client>(() => http.Client());

  di.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSource(client: di<http.Client>()));
  di.registerLazySingleton<ISectionsRepository>(
      () => SectionsRepository(di<RemoteDataSource>()));
  di.registerLazySingleton(() => GetSections(di<ISectionsRepository>()));
  di.registerFactory<SectionsBloc>(
    () => SectionsBloc(getSections: di<GetSections>()),
  );
}
