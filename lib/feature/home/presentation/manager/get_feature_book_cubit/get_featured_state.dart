abstract class GetFeatureBookState {}

class GetFeatureBookItit extends GetFeatureBookState {}

class GetFeatureBookLoading extends GetFeatureBookState {}

class GetFeatureBookSuccess extends GetFeatureBookState {}

class GetFeatureBookFaulire extends GetFeatureBookState {
  final String errormessage;

  GetFeatureBookFaulire(this.errormessage);
}
