import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/home/data/repos/home_repo_implementaion.dart';

part 'fetch_newest_book_state.dart';

class FetchNewestBookCubit extends Cubit<FetchNewestBookState> {
  FetchNewestBookCubit(this.homeRepoImpl) : super(FetchNewestBookInitial());

  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchNewestBook() async {
    emit(FetchNewestBookLoading());
    var result = await homeRepoImpl.fetchNewsetBox();

    result.fold(
      (failure) {
        emit(FetchNewestBookFailure(failure.errormessage));
      },
      (books) {
        emit(FetchNewestBookSuccess(books));
      },
    );
  }
}
