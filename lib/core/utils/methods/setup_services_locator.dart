import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mactabty/core/utils/api_services.dart';
import 'package:mactabty/feature/home/data/repos/home_repo_implementaion.dart';

final gitit = GetIt.instance;

void setupServicesLocator() {
  gitit.registerSingleton<ApiServices>(ApiServices(Dio()));

  gitit.registerSingleton<HomeRepoImpl>(HomeRepoImpl(gitit.get<ApiServices>()));
}
