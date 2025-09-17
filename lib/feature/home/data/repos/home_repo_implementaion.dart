import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:mactabty/core/errors/failute.dart';
import 'package:mactabty/core/methods/api_services.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<BookMoldel>>> fetchFeatureBook() async {
    try {
      Response response = await apiServices.get(
        endpoint: 'volumes?q=subject:programming&filtering=free-ebooks',
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

  @override
  Future<Either<Failure, List<BookMoldel>>> fetchNewsetBook() async {
    try {
      Response response = await apiServices.get(
        endpoint: 'volumes?q=programming&sorting=newest',
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

  @override
  Future<Either<Failure, List<BookMoldel>>> fetchSimilarBook({
    required String category,
  }) async {
    try {
      Response response = await apiServices.get(
        endpoint:
            'volumes?q=subject:$category&filtering=free-ebooks&sorting=relevance',
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
