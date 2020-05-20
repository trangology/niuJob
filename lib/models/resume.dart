import 'package:niu_job/models/language_skill.dart';
import 'package:niu_job/models/programming_lang.dart';

import 'education.dart';
import 'work_experience.dart';

class Resume {
  String fullName;
  String email;
  String github;
  String skype;
  String personalWebsite;
  String description;
  Education education;
  WorkExperience workExperience;
  List<LanguageSkill> languageSkills;
  List<ProgrammingLanguage> programmingLanguages;
  List<String> otherSkills;
  String address;

  Resume({
      this.fullName,
      this.email,
      this.github,
      this.skype,
      this.personalWebsite,
      this.description,
      this.education,
      this.workExperience,
      this.languageSkills,
      this.programmingLanguages,
      this.otherSkills, this.address});
}