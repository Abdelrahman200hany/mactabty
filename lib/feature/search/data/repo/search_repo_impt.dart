import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mactabty/core/errors/failute.dart';
import 'package:mactabty/core/methods/api_services.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/search/data/repo/search_repo.dart';

class SearchRepoImpt implements SearchRepo {
  SearchRepoImpt(this.apiServices);

  final ApiServices apiServices;
  @override
  Future<Either<Failure, List<BookMoldel>>> fetchSearchBooks({
    required String searchCatory,
  }) async {
    try {
      Response response = await apiServices.get(
        endpoint: 'volumes?q=subject:$searchCatory&filtering=free-ebooks',
      );
      Map<String, dynamic> data = response.data;

      List<BookMoldel> bookList = [];
      for (var item in data['items']) {
        bookList.add(BookMoldel.fromJson(item));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExpetion(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
