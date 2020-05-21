import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:niu_job/candicate/jobs/bloc/candicate_post_bloc/jobseeker_posts_event.dart';
import 'package:niu_job/candicate/jobs/bloc/candicate_post_bloc/jobseeker_posts_state.dart';

import 'package:http/http.dart' as http;
import 'package:niu_job/models/jobseeker.dart';
import 'package:niu_job/resources/strings.dart';
import 'package:niu_job/models/companies_post.dart';

class JobSeekerBloc extends Bloc<CompaniesPostsEvent, CompaniesPostsState> {
  @override
  CompaniesPostsState get initialState => JobSeekerPostsLoading();
  
  @override
  Stream<CompaniesPostsState> mapEventToState(CompaniesPostsEvent event) async* {
    try {
      if (event is FetchCompaniesPost) {
        print(await http.get(Strings.BASE_URL + '/companies/posts'));
        List<CompaniesPost> posts = (jsonDecode(
            (await http.get(Strings.BASE_URL + '/companies/posts')).body) as List).map((e) => CompaniesPost.fromJson(e));
        print('ccccccccccccccccccc');
        yield CompaniesPostsSuccess(companiesPosts: posts);
      }
    } catch (e) {
      throw e;
    }
  }
}