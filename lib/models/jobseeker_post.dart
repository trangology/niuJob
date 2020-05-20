import 'package:json_annotation/json_annotation.dart';
import 'package:niu_job/models/language_skill.dart';
import 'package:niu_job/models/programming_lang.dart';
part 'jobseeker_post.g.dart';
@JsonSerializable()
class JobSeekerPost {
  String jobSeekerId;
  List<String> positions;
  List<ProgrammingLanguage> programmingLanguages;
  List<LanguageSkill> languages;
  List<String> workTypes;

  JobSeekerPost({this.jobSeekerId, this.positions, this.programmingLanguages,
      this.languages, this.workTypes});

  factory JobSeekerPost.fromJson(Map<String, dynamic> json) => _$JobSeekerPostFromJson(json);

  Map<String, dynamic> toJson() => _$JobSeekerPostToJson(this);
}