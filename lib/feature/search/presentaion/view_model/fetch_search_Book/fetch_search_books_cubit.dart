import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/search/data/repo/search_repo_impt.dart';

part 'fetch_search_books_state.dart';

class FetchSearchBooksCubit extends Cubit<FetchSearchBooksState> {
  FetchSearchBooksCubit(this.searchRepoImpt) : super(FetchSearchBooksInitial());

  final SearchRepoImpt searchRepoImpt;

  List<BookMoldel> searchBooks = [];

  Future<void> fetchSearchBooks({required String searchCatory}) async {
    emit(FetchSearchBooksLoading());
    var result = await searchRepoImpt.fetchSearchBooks(
      searchCatory: searchCatory,
    );
    result.fold(
      (failure) {
        emit(FetchSearchBooksFailure(failure.errormessage));
      },
      (books) {
        searchBooks = books;
        emit(FetchSearchBooksSuccess());
      },
    );
  }
}
