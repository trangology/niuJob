import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:niu_job/maps/bloc/maps_bloc.dart';
import 'package:niu_job/maps/bloc/maps_event.dart';
import 'package:niu_job/maps/bloc/maps_state.dart';
import 'package:niu_job/notifications/notification_screen.dart';
import 'package:niu_job/search/search_screen.dart';

class MapScreen extends StatefulWidget {
  final FirebaseUser user;

  MapScreen({@required this.user});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> _completer = Completer();
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapsBloc()..add(FetchPosition()),
      child: BlocBuilder<MapsBloc, MapState>(
        // ignore: missing_return
        builder: (context, state) {
          if (state is MapLoading) {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (state is PositionLoaded) {
            var latLng =
                LatLng(state.position.latitude, state.position.longitude);
            var marker =
                Marker(markerId: MarkerId("user_position"), position: latLng);
            return Scaffold(
              body: Stack(
                children: <Widget>[
                  GoogleMap(
                    initialCameraPosition:
                        CameraPosition(target: latLng, zoom: 12),
                    mapType: MapType.normal,
                    onMapCreated: (controller) =>
                        _completer.complete(controller),
                    markers: Set.from([
                      marker,
                      Marker(
                          position: LatLng(16.041219, 108.220472),
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Text('Hello');
                              },
                            );
                          },
                          markerId: MarkerId('axon')),
                      Marker(
                          position: LatLng(16.069494, 108.233892),
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Text('Hello');
                              },
                            );
                          },
                          markerId: MarkerId('enouvo')),
                      Marker(
                          position: LatLng(16.074659, 108.224104),
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Text('Hello');
                              },
                            );
                          },
                          markerId: MarkerId('dnes')),
                      Marker(
                          position: LatLng(16.053647, 108.211023),
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Text('Hello');
                              },
                            );
                          },
                          markerId: MarkerId('wakumo')),
                    ]),
                  ),
                  Positioned(
                    top: 32,
                    left: 16,
                    right: 16,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        maxLines: 1,
                        textInputAction: TextInputAction.search,
                        onSubmitted: (string) {
                          if (string.isEmpty) return;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SearchScreen()));
                          _searchController.clear();
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintStyle: TextStyle(color: Colors.orangeAccent),
                            hintText: "Tìm kiếm công việc gần đây...",
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage:
                                    Image.network(widget.user.photoUrl).image,
                              ),
                            ),
                            border: InputBorder.none),
                        controller: _searchController,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 108,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: IconButton(
                        icon: Icon(Icons.my_location, color: Colors.orange),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 108,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: IconButton(
                        icon: Icon(Icons.notifications, color: Colors.orange),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NotificationScreen(),
                          ));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
