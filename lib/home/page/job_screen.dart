import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:niu_job/candicate/maps/bloc/maps_bloc.dart';
import 'package:niu_job/candicate/maps/bloc/maps_event.dart';
import 'package:niu_job/candicate/maps/bloc/maps_state.dart';
import 'package:niu_job/models/companies_post.dart';

class JobScreen extends StatefulWidget {
  final CompaniesPost post;

  JobScreen({this.post});

  @override
  _JobScreenState createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              BlocProvider(
                create: (context) => MapsBloc()..add(FetchPosition()),
                child: BlocBuilder<MapsBloc, MapState>(
                  builder: (context, state) {
                    if (state is MapLoading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state is PositionLoaded) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AspectRatio(
                            child: GoogleMap(
                              initialCameraPosition: CameraPosition(
                                  target: LatLng(state.position.latitude,
                                      state.position.longitude)),
                              markers: [
                                Marker(
                                    markerId: MarkerId("huhu"),
                                    position: LatLng(state.position.latitude,
                                        state.position.longitude))
                              ].toSet(),
                            ),
                            aspectRatio: 4 / 3,
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  widget.post.positions[0],
                                  style: TextStyle(fontSize: 24),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                      "Từ " +
                                          widget.post.salary.from +
                                          " - " +
                                          widget.post.salary.to,
                                      style: TextStyle(color: Colors.purple)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 16),
                                  child: Text("Yêu cầu công việc:",
                                      style: TextStyle(fontSize: 20)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "- Android tối thiểu 6 tháng kinh nghiệm"),
                                      Text("- Code bằng Java hoặc Kotlin"),
                                      Text(
                                          "- Có thể xử lý dữ liệu lớn, memory leak, realtime, làm việc với social network"),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 16),
                                  child: Text("Các phúc lợi:",
                                      style: TextStyle(fontSize: 20)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "- Ngoài lương còn nhận thưởng hàng quý, năm"),
                                      Text("- Vi vu khắp chốn"),
                                      Text(
                                          "- Được đào tạo trong quá trình làm việc"),
                                    ],
                                  ),
                                ),
                                Wrap(
                                  children: (widget.post.salaryType as List)
                                      .map((e) => Chip(
                                            label: Text(e.name),
                                          ))
                                      .toList(),
                                )
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ),
                        ],
                      );
                    }
                    return Container();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
