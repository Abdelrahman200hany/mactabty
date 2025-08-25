import 'package:mactabty/core/errors/failute.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookMoldel>>> fectchFreeSellerBox();
  Future<Either<Failure, List<BookMoldel>>> fectchFeatureBox();
}
