import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/models/jobseeker_post.dart';
import 'package:niu_job/models/companies_post.dart';

class JobScreen extends StatelessWidget {

  final List<Object> jobs;

  JobScreen({this.jobs});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          // ignore: missing_return
          itemBuilder: (context, index) {
            if (jobs[index] is JobSeekerPost) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 96,
                          height: 96,
                          child: Container(color: Colors.black,),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }
            if (jobs[index] is CompaniesPost) {

            }
          },
        ),
      ),
    );
  }
}