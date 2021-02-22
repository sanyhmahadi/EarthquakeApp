import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShowMap extends StatefulWidget {
  @override
  _ShowMapState createState() => _ShowMapState();
}

class _ShowMapState extends State<ShowMap> {
  GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);
  void onMapController(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map"),
        centerTitle: true,
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: _center, zoom: 15),
      ),
    );
  }
}
