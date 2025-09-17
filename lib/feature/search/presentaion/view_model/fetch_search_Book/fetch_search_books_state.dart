part of 'fetch_search_books_cubit.dart';

sealed class FetchSearchBooksState extends Equatable {
  const FetchSearchBooksState();

  @override
  List<Object> get props => [];
}

final class FetchSearchBooksInitial extends FetchSearchBooksState {}

final class FetchSearchBooksLoading extends FetchSearchBooksState {}

final class FetchSearchBooksSuccess extends FetchSearchBooksState {}

final class FetchSearchBooksFailure extends FetchSearchBooksState {
  final String errorMessage;
  const FetchSearchBooksFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
