import 'package:equatable/equatable.dart';

abstract class FetchFeatureBookState extends Equatable {
  const FetchFeatureBookState();

  @override
  List<Object> get props => [];
}

class GetFeatureBookItit extends FetchFeatureBookState {}

class GetFeatureBookLoading extends FetchFeatureBookState {}

class GetFeatureBookSuccess extends FetchFeatureBookState {}

class GetFeatureBookFaulire extends FetchFeatureBookState {
  final String errormessage;

  const GetFeatureBookFaulire(this.errormessage);
}
