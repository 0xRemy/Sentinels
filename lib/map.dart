import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project/mapuaevac.dart';

class map extends StatelessWidget {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center =
      const LatLng(14.590528287567317, 120.97718433105983);

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
    final Set<Marker> _markers = {
      Marker(
          markerId: MarkerId('Mapua'),
          position: LatLng(14.590475794207904, 120.97795912134634),
          infoWindow: InfoWindow(
              title: 'Mapua University', snippet: 'Evacuation Center')),
      Marker(
          markerId: MarkerId('Casa Consuelo'),
          position: LatLng(14.590851222365302, 120.9769847627427),
          infoWindow: InfoWindow(
              title: 'Casa Consuelo Dormitory', snippet: 'Evacuation Center'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => mapuaevac()));
          }),
      Marker(
          markerId: MarkerId('Casa Paz'),
          position: LatLng(14.590973120670538, 120.97663003862802),
          infoWindow: InfoWindow(
              title: 'Casa Paz Corte Real', snippet: 'Evacuation Center')),
    };

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
                  CameraPosition(target: _center, zoom: 15.0),
              mapType: _currentMapType,
              markers: _markers,
              onCameraMove: _onCameraMove,
            )
          ],
        ));
  }
}
