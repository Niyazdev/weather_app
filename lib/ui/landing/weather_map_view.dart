import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:whetherapp/utils/app_theme.dart';

class WeatherMapView extends StatefulWidget {
  final response;

  const WeatherMapView({@required this.response});

  @override
  _WeatherMapViewState createState() => _WeatherMapViewState();
}

class _WeatherMapViewState extends State<WeatherMapView> {
  Completer<GoogleMapController> _controller = Completer();
  LatLng _center;
  Set<Marker> _markers = {};

  @override
  void initState() {
    _center = LatLng(
        double.parse(widget.response['location']['lat'].toString()),
        double.parse(widget.response['location']['lon'].toString()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String _title =
        '${widget.response['location']['name']}\t ${widget.response['current']['temperature']}'
        '\'C';
    return Stack(
      children: <Widget>[
        GoogleMap(
          myLocationEnabled: true,
          markers: _markers,
          compassEnabled: true,
          mapType: MapType.hybrid,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            setState(
              () {
                _markers.add(
                  Marker(
                    infoWindow: InfoWindow(title: _title),
                    markerId: MarkerId(''),
                    position: _center,
                    icon: BitmapDescriptor.defaultMarker,
                  ),
                );
              },
            );
          },
          initialCameraPosition: CameraPosition(
            zoom: 11.0,
            target: _center,
          ),
        ),
      ],
    );
  }
}
