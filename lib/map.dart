import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class map extends StatelessWidget {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(4.5421563, -122.677433);
  final Set<Marker> _markers = {};
  LatLng _lastMapPoistion = _center;
  MapType _currentMapType = MapType.normal;

  _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  _onCameraMove(CameraPosition position) {
    _lastMapPoistion = position.target;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: const Color(0xFFDE6449)),
              onPressed: () {}),
          title: Text(
            'Salba',
            style: TextStyle(
                color: const Color(0xFFDE6449),
                fontFamily: 'masque',
                fontSize: 28),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            child: Container(
              color: Colors.black,
              height: 2.0,
            ),
            preferredSize: Size.fromHeight(2.0),
          ),
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition:
                  CameraPosition(target: _center, zoom: 11.0),
              mapType: _currentMapType,
              markers: _markers,
              onCameraMove: _onCameraMove,
            )
          ],
        ));
  }
}
