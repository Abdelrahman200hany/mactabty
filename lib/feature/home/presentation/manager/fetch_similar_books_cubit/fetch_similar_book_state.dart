part of 'fetch_similar_book_cubit.dart';

sealed class FetchSimilarBookState extends Equatable {
  const FetchSimilarBookState();

  @override
  List<Object> get props => [];
}

final class FetchSimilarBookInitial extends FetchSimilarBookState {}

final class FetchSimilarBookLoading extends FetchSimilarBookState {}

final class FetchSimilarBookSuccess extends FetchSimilarBookState {
  final List<BookMoldel> books;
  const FetchSimilarBookSuccess(this.books);
}

final class FetchSimilarBookFailure extends FetchSimilarBookState {
  final String errorMessage;
  const FetchSimilarBookFailure(this.errorMessage);
}
