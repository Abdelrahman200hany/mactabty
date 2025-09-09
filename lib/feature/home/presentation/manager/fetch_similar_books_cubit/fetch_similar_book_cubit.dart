import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/home/data/repos/home_repo_implementaion.dart';

part 'fetch_similar_book_state.dart';

class FetchSimilarBookCubit extends Cubit<FetchSimilarBookState> {
  FetchSimilarBookCubit(this.homeRepoImpl) : super(FetchSimilarBookInitial());

final HomeRepoImpl homeRepoImpl;

  Future<void> fetchSimilarBook({required String category}) async {
    emit(FetchSimilarBookLoading());
    var result = await homeRepoImpl.fetchSimilarBook(category: category);

    result.fold(
      (failure) {
        emit(FetchSimilarBookFailure(failure.errormessage));
      },
      (books) {
        emit(FetchSimilarBookSuccess(books));
      },
    );
  }



  
}
