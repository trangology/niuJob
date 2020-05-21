import 'package:equatable/equatable.dart';
import 'package:niu_job/models/jobseeker.dart';
import 'package:niu_job/models/companies_post.dart';

abstract class CompaniesPostsState extends Equatable {

  @override
  List<Object> get props => [];
}

class JobSeekerPostsLoading extends CompaniesPostsState {}
class JobSeekerPostsError extends CompaniesPostsState {}
class CompaniesPostsSuccess extends CompaniesPostsState {
  final List<CompaniesPost> companiesPosts;

  CompaniesPostsSuccess({this.companiesPosts});
}