import 'package:get_it/get_it.dart';
import 'package:scopedmodel/scoped_models/home_model.dart';
import 'package:scopedmodel/services/storage_services.dart';

// This is our global ServiceLocator
GetIt locator = GetIt.instance;

void setupLocator(){
  //register services
  locator.registerLazySingleton<StorageService>(() => StorageService());

  //register models
  locator.registerFactory<HomeModel>(() => HomeModel());
}