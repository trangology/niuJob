import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:niu_job/create_resume/steps/step_one.dart';
import 'package:niu_job/maps/bloc/maps_bloc.dart';
import 'package:niu_job/maps/bloc/maps_event.dart';
import 'package:niu_job/maps/bloc/maps_state.dart';
import 'package:niu_job/resources/my_widget.dart';

class YourLocation extends StatelessWidget {
  var _addressController = TextEditingController();

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
                MyWidget.createResumeTitle("Vị trí của bạn"),
                Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: TextField(
                    controller: _addressController,
                    onSubmitted: (value) {

                    },
                    decoration: InputDecoration(
                      labelText: "Địa chỉ của bạn",
                      hintText: "Nhập địa chỉ của bạn",
                      prefixIcon: Icon(Icons.room),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: BlocProvider(
                      create: (context) => MapsBloc()..add(FetchPosition()),
                      child: BlocBuilder<MapsBloc, MapState>(
                        // ignore: missing_return
                        builder: (context, state) {
                          if (state is MapLoading) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (state is PositionLoaded) {
                            var latLng = LatLng(
                                state.position.latitude,
                                state.position.longitude
                            );
                            var coordinate = Coordinates(state.position.latitude, state.position.longitude);
                            Geocoder.local.findAddressesFromCoordinates(coordinate).then((value) {
                              _addressController.text = value.first.addressLine;
                            });
                            return GoogleMap(
                              initialCameraPosition: CameraPosition(
                                target: latLng,
                                zoom: 16,
                              ),
                              markers: Set.of([Marker(markerId: MarkerId("current"), position: latLng)]),
                            );
                          }
                        }
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text("Lưu ý: Địa chỉ sẽ được hiển thị trong resume của bạn", style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic
                  ),),
                ),
                MyWidget.prevNextButton(() {
                  Navigator.of(context).pop();
                }, () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => StepOne(address: _addressController.text)));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}