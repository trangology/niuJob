import 'package:json_annotation/json_annotation.dart';
import 'package:niu_job/models/jobseeker_post.dart';
part 'jobseeker_liked.g.dart';

@JsonSerializable(explicitToJson: true)
class JobSeekerLiked {
  String jobSeekerId;
  JobSeekerPost post;
  DateTime date;

  JobSeekerLiked({this.jobSeekerId, this.post, this.date});

  factory JobSeekerLiked.fromJson(Map<String, dynamic> json) => _$JobSeekerLikedFromJson(json);

  Map<String, dynamic> toJson() => _$JobSeekerLikedToJson(this);
}