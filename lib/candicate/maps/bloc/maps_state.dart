import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

abstract class MapState extends Equatable {

  const MapState();

  @override
  List<Object> get props => [];
}

class MapStarted extends MapState {

}

class MapLoading extends MapState {

}

class PositionLoaded extends MapState {
  final Position position;

  PositionLoaded({@required this.position});
}