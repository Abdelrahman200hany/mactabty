import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mactabty/core/methods/api_services.dart';
import 'package:mactabty/feature/home/data/repos/home_repo_implementaion.dart';
import 'package:mactabty/feature/search/data/repo/search_repo_impt.dart';

final gitit = GetIt.instance;

void setupServicesLocator() {
  gitit.registerSingleton<ApiServices>(ApiServices(Dio()));

  gitit.registerSingleton<HomeRepoImpl>(HomeRepoImpl(gitit.get<ApiServices>()));
  gitit.registerSingleton<SearchRepoImpt>(SearchRepoImpt(gitit.get<ApiServices>()));
}
