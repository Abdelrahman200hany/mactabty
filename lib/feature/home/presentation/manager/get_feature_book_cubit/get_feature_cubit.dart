import 'package:bloc/bloc.dart';

import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/home/data/repos/home_repo_implementaion.dart';
import 'package:mactabty/feature/home/presentation/manager/get_feature_book_cubit/get_featured_state.dart';

class GetFeatureCubit extends Cubit<GetFeatureBookState> {
  GetFeatureCubit(this.homeRepoImpl) : super(GetFeatureBookItit());

  final HomeRepoImpl homeRepoImpl;

  List<BookMoldel> bookList = [];
  Future<void> getFeatureCubit() async {
    emit(GetFeatureBookLoading());
    var result = await homeRepoImpl.fectchFeatureBox();

    result.fold(
      (failure) {
        emit(GetFeatureBookFaulire(failure.errormessage));
      },
      (books) {
        bookList = books;
        emit(GetFeatureBookSuccess());
      },
    );
  }
}
