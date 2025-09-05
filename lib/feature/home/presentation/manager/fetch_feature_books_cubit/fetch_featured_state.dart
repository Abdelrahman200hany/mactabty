import 'package:equatable/equatable.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';

abstract class FetchFeatureBookState extends Equatable {
  const FetchFeatureBookState();

  @override
  List<Object> get props => [];
}

class GetFeatureBookItit extends FetchFeatureBookState {}

class GetFeatureBookLoading extends FetchFeatureBookState {}

class GetFeatureBookSuccess extends FetchFeatureBookState {

  final List<BookMoldel> booklist;

  const GetFeatureBookSuccess(this.booklist);
}

class GetFeatureBookFaulire extends FetchFeatureBookState {
  final String errormessage;

  const GetFeatureBookFaulire(this.errormessage);
}
