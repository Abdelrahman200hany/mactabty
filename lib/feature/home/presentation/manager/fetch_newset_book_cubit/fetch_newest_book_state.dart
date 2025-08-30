part of 'fetch_newest_book_cubit.dart';

sealed class FetchNewestBookState extends Equatable {
  const FetchNewestBookState();

  @override
  List<Object> get props => [];
}

final class FetchNewestBookInitial extends FetchNewestBookState {}

final class FetchNewestBookLoading extends FetchNewestBookState {}

final class FetchNewestBookSuccess extends FetchNewestBookState {
  final List<BookMoldel> books;

  const FetchNewestBookSuccess(this.books);
}

final class FetchNewestBookFailure extends FetchNewestBookState {
  final String errormessage;

  const FetchNewestBookFailure(this.errormessage);
}
