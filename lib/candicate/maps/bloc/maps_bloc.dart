import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

import 'maps_event.dart';
import 'maps_state.dart';

class MapsBloc extends Bloc<MapEvent, MapState> {
  @override
  // TODO: implement initialState
  MapState get initialState => MapLoading();

  @override
  Stream<MapState> mapEventToState(MapEvent event) async* {
    if (event is FetchPosition) {
      yield PositionLoaded(position: await getPosition());
    }
  }

  Future<Position> getPosition() async =>
      await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
}