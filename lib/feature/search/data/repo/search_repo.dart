
import 'package:dartz/dartz.dart';
import 'package:mactabty/core/errors/failute.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';

abstract class SearchRepo {

Future < Either< Failure , List<BookMoldel >>> fetchSearchBooks ( { required  String searchCatory } ) ; 


} 