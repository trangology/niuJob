import 'package:equatable/equatable.dart';

abstract class CompaniesPostsEvent extends Equatable {

  @override
  List<Object> get props {
    return [];
  }
}

class FetchCompaniesPost extends CompaniesPostsEvent {}