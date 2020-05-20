import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:niu_job/create_resume/steps/last_step.dart';
import 'package:niu_job/models/resume.dart';
import 'package:niu_job/resources/my_widget.dart';
import 'package:niu_job/resources/strings.dart';

class PreviewResume extends StatelessWidget {
  final Resume resume;

  PreviewResume({@required this.resume});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: MyWidget.createResumeTitle(Strings.textPreviewResume),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: <Widget>[
                        Stack(children: <Widget>[
                          Positioned(
                            child: IconButton(
                              onPressed: () {},
                              icon:
                                  Icon(Icons.camera_alt, color: Colors.black38),
                            ),
                            top: 40,
                            right: 136,
                          ),
                          Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.black12,
                              child: Icon(
                                Icons.person,
                                color: Colors.black45,
                              ),
                              radius: 40,
                            ),
                          ),
                        ]),
                        Center(
                          child: Text(
                            resume.fullName,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                            child: RichText(
                          text: TextSpan(children: [
                            WidgetSpan(child: Icon(Icons.room)),
                            TextSpan(
                                text: resume.address,
                                style:
                                    TextStyle(color: Colors.black, fontSize: 14)),
                          ]),
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          resume.github.isNotEmpty
                              ? RichText(
                                  text: TextSpan(children: [
                                  WidgetSpan(
                                      child: Icon(
                                    FontAwesomeIcons.github,
                                    size: 20,
                                  )),
                                  TextSpan(
                                      text: " " + resume.github,
                                      style: textStyle)
                                ]))
                              : RichText(
                                  text: TextSpan(children: [
                                  WidgetSpan(
                                      child: Icon(
                                    FontAwesomeIcons.github,
                                    size: 20,
                                  )),
                                  TextSpan(text: " Không có", style: textStyle)
                                ])),
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                                child: Icon(
                              Icons.email,
                              size: 20,
                            )),
                            TextSpan(text: " " + resume.email, style: textStyle)
                          ])),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                                child: Icon(
                              Icons.adjust,
                              size: 20,
                            )),
                            TextSpan(text: " Mục tiêu:", style: boldTextStyle)
                          ])),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(resume.description),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(children: [
                            WidgetSpan(
                                child: Icon(
                              Icons.school,
                              size: 20,
                            )),
                            TextSpan(text: " Học vấn:", style: boldTextStyle)
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Flex(
                            direction: Axis.horizontal,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                flex: 4,
                                child: Text(
                                    "${resume.education.startDate} - ${resume.education.endDate}",
                                    style: boldSmallerStyle),
                              ),
                              Flexible(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(resume.education.schoolName,
                                          style: boldSmallerStyle),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Text(resume.education.degree),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(children: [
                            WidgetSpan(child: Icon(Icons.work)),
                            TextSpan(
                                text: " Kinh nghiệm làm việc:",
                                style: boldTextStyle)
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flex(
                                  direction: Axis.horizontal,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 4,
                                      child: Text(
                                          "${resume.workExperience.startDate} - ${resume.workExperience.endDate}",
                                          style: boldSmallerStyle),
                                    ),
                                    Flexible(
                                      flex: 4,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(resume.workExperience.position,
                                                style: boldSmallerStyle),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: Text(resume
                                                  .workExperience.description),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(children: [
                              WidgetSpan(child: Icon(Icons.translate, size: 20)),
                              TextSpan(
                                  text: " Ngoại ngữ:",
                                  style: boldTextStyle)
                            ]),
                          ),
//                        Wrap(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                        )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(children: [
                              WidgetSpan(child: Icon(Icons.code, size: 20)),
                              TextSpan(
                                  text: " Ngôn ngữ lập trình/tools/platforms:",
                                  style: boldTextStyle)
                            ]),
                          ),
//                        Wrap(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                        )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(children: [
                              WidgetSpan(child: Icon(Icons.more, size: 20)),
                              TextSpan(
                                  text: " Kĩ năng khác:",
                                  style: boldTextStyle)
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.start,
                              children: resume.otherSkills.map((string) => Chip(label: Text(string))).toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                MyWidget.prevNextButton(() {
                  Navigator.of(context).pop();
                }, (){
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LastStep(resume: resume)), (route) => false);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const textStyle = TextStyle(fontSize: 16, color: Colors.black);
const boldTextStyle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);
const boldSmallerStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 14);
